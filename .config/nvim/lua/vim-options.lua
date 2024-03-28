local silent = { silent = true }

vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
vim.g.mapleader = " "
vim.opt.smartindent = true

vim.opt.termguicolors = true

vim.opt.cursorline = true

vim.opt.nu = true -- line numbers
vim.opt.relativenumber = true

vim.wo.wrap = false -- wrap around text

-- alt + arrow keys for vscode => V mode + shift-J/K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ctrl + c to system clipboard
vim.keymap.set("n", "<leader>y", '"+y')
vim.keymap.set("v", "<leader>y", '"+y')
vim.keymap.set("n", "<leader>Y", '"+Y')

vim.keymap.set("n", "<leader>p", '"+p')
vim.keymap.set("v", "<leader>p", '"+p')
vim.keymap.set("n", "<leader>P", '"+P')

-- make split
-- vim.keymap.set("n", "<leader>sk", ":leftabove split<CR>")
-- vim.keymap.set("n", "<leader>sj", ":rightbelow split<CR>")
-- vim.keymap.set("n", "<leader>sh", ":leftabove vsplit<CR>")
-- vim.keymap.set("n", "<leader>sl", ":rightbelow vsplit<CR>")

-- change split
vim.keymap.set("n", "<C-k>", "<C-w><Up>")
vim.keymap.set("n", "<C-j>", "<C-w><Down>")
vim.keymap.set("n", "<C-h>", "<C-w><Left>")
vim.keymap.set("n", "<C-l>", "<C-w><Right>")

-- turn off highlighting
vim.keymap.set("n", "<leader>s/", ":noh<CR>", silent)

-- vim diagnostics
vim.keymap.set("n", "<leader>sd", vim.diagnostic.open_float, {})

-- open bew buffer
vim.keymap.set("n", "<A-o>", ":enew<CR>", silent)

-- terminal
local opts = { noremap = true, silent = true }
vim.keymap.set("t", "<ESC>", [[<C-\><C-n>]], opts) -- exit terminal mode
vim.keymap.set("t", "<C-h>", [[<Cmd>wincmd h<CR>]], opts)
vim.keymap.set("t", "<C-j>", [[<Cmd>wincmd j<CR>]], opts)
vim.keymap.set("t", "<C-k>", [[<Cmd>wincmd k<CR>]], opts)
vim.keymap.set("t", "<C-l>", [[<Cmd>wincmd l<CR>]], opts)
vim.keymap.set("t", "<C-w>", [[<C-\><C-n><C-w>]], opts)

-- indentation
vim.keymap.set("n", "<Tab>", ">>")
vim.keymap.set("n", "<S-Tab>", "<<")
vim.keymap.set("v", "<Tab>", "><Esc>gv")
vim.keymap.set("v", "<S-Tab>", "<<Esc>gv")
