vim.cmd("set shiftwidth=4")
vim.cmd("set tabstop=4")
vim.g.mapleader = " "
vim.opt.smartindent = true

vim.opt.termguicolors = true

vim.opt.nu = true -- line numbers
vim.opt.relativenumber = true

-- alt + arrow keys for vscode => V mode + shift-J/K
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- ctrl + c to system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>p", "\"+p")
vim.keymap.set("v", "<leader>p", "\"+p")
vim.keymap.set("n", "<leader>P", "\"+P")

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
