--[[local config = {
	cmd = { vim.fn.expand("~/.local/share/nvim/mason/bin/jdtls") },
    -- cmd = {'/path/to/jdt-language-server/bin/jdtls'},
    root_dir = vim.fs.dirname(vim.fs.find({'gradlew', '.git', 'mvnw'}, { upward = true })[1]),
} ]]
--

-- workspace dir

-- local function directory_exists(path)
-- 	local f = io.popen("cd " .. path)
-- 	if f == nil then
-- 		return false
-- 	end
-- 	local ff = f:read("*all")
-- 	if ff:find("ItemNotFoundException") then
-- 		return false
-- 	else
-- 		return true
-- 	end
-- end

--- Check if a file or directory exists in this path
local function exists(file)
	local ok, err, code = os.rename(file, file)
	if not ok then
		if code == 13 then
			-- Permission denied, but it exists
			return true
		end
	end
	return ok, err
end

--- Check if a directory exists in this path
local function isdir(path)
	-- "/" works on both Unix and Windows
	return exists(path .. "/")
end

local project_name = vim.fn.fnamemodify(vim.fn.getcwd(), ":p:h:t")
local workspace_dir = vim.fn.stdpath("data") .. "/site/java/workspace-root/" .. project_name
if isdir(workspace_dir) then
else
	os.execute("mkdir " .. workspace_dir)
end

-- jar libraries
local libraries = vim.fn.split(vim.fn.glob(vim.fn.getcwd() .. "/lib/*.jar"), "\n")

-- get mason install path
local install_path = require("mason-registry").get_package("jdtls"):get_install_path()

-- get current os
local os
if vim.fn.has("macunix") then
	os = "mac"
elseif vim.fn.has("win32") then
	os = "win"
else
	os = "linux"
end

-- debug path
local java_debug_path = vim.fn.stdpath("data") .. "/lazy/java-debug/com.microsoft.java.debug.plugin/target"
local bundles = {
	vim.fn.glob(java_debug_path .. "/com.microsoft.java.debug.plugin-*.jar", 1),
}

-- testing path
-- local java_test_path = vim.fn.stdpath("data") .. "/lazy/vscode-java-test"

local config = {
	cmd = {
		-- 💀
		"java",

		"-Declipse.application=org.eclipse.jdt.ls.core.id1",
		"-Dosgi.bundles.defaultStartLevel=4",
		"-Declipse.product=org.eclipse.jdt.ls.core.product",
		"-Dlog.protocol=true",
		"-Dlog.level=ALL",
		"-Xmx1g",
		"--add-modules=ALL-SYSTEM",
		"--add-opens",
		"java.base/java.util=ALL-UNNAMED",
		"--add-opens",
		"java.base/java.lang=ALL-UNNAMED",

		-- 💀
		"-jar",
		vim.fn.glob(install_path .. "/plugins/org.eclipse.equinox.launcher_*.jar"),

		-- 💀
		"-configuration",
		install_path .. "/config_" .. os,

		-- 💀
		"-data",
		workspace_dir,
	},

	-- 💀
	root_dir = require("jdtls.setup").find_root({ ".git", "mvnw", "gradlew" }),

	settings = {
		java = {
			eclipse = {
				downloadSources = true,
			},
			configuration = {
				updateBuildConfiguration = "interactive",
				runtimes = {
					{
						--name = "JavaSE-21",
						--path = "/usr/lib/jvm/java-21-openjdk-amd64",
					},
				},
			},
			referencesCodeLens = {
				enabled = true,
			},
			signatureHelp = { enabled = true },
			project = {
				referencedLibraries = libraries
				-- referencedLibraries = {
				-- 	-- vim.fn.glob(vim.fn.getcwd() .. "/lib/junit-platform-console-standalone-*.jar"),
				-- 	vim.fn.glob(vim.fn.getcwd() .. "/lib/antlr-*.jar"),
				-- },
			},
		},
	},

	init_options = {
		bundles = bundles,
		vim.fn.glob(java_debug_path .. "/com.microsoft.java.debug.plugin-*.jar", 1),
	},
}

config["on_attach"] = function(client, bufnr)
	require("jdtls").setup_dap({ hotcodereplace = "auto" })
	require("jdtls.dap").setup_dap_main_class_configs()
end

require("jdtls").start_or_attach(config)
