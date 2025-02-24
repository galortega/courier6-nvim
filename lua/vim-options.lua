vim.cmd("set expandtab")
vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

vim.opt.swapfile = false

vim.keymap.set('n', '<c-k>', ':wincmd k<cr>')
vim.keymap.set('n', '<c-j>', ':wincmd j<cr>')
vim.keymap.set('n', '<c-h>', ':wincmd h<cr>')
vim.keymap.set('n', '<c-l>', ':wincmd l<cr>')

vim.wo.number = true
vim.wo.cursorline = true
