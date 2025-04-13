vim.g.mapleader = ' '

local map = vim.keymap.set

map({'i', 'v'}, '<leader>jk', '<Esc>')
map({'n', 'v'}, '<leader>q', '<cmd>q<cr>')
map({'n', 'v'}, '<leader>w', '<cmd>w<cr>')
