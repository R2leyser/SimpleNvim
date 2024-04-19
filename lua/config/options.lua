
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.autoindent = true
vim.o.number = true 
vim.o.rnu = true
vim.o.termguicolors = true
vim.o.expandtab = true
vim.o.syntax = true

vim.o.tabstop = 4
vim.o.shiftwidth = 4

-- vim.cmd("syntax on")
vim.cmd("highlight Normal ctermbg=NONE")
vim.cmd("highlight nonText ctermbg=NONE")
vim.cmd("filetype plugin indent on")
vim.cmd("silent! colorscheme everblush")
