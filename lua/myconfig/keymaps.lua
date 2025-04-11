vim.g.mapleader = ' '

local map = vim.keymap.set

map({'i', 'v'}, '<leader>jk', '<Esc>')
map({'n', 'v'}, '<leader>q', '<cmd>bd<cr>')
map({'n', 'v'}, '<leader><backspace>', '<cmd>q<cr>')
map({'n', 'v'}, '<leader>w', '<cmd>w<cr>')

-- Neotree

map('n', '<C-n>', '<CMD>Neotree toggle action=focus source=filesystem position=left<CR>')
map('n', '<C-e>', '<CMD>Neotree action=focus source=filesystem position=left<CR>')
map('n', '<leader>b', '<CMD>Neotree toggle action=focus source=buffers position=float<CR>')
map('n', '<leader>s', '<CMD>Neotree toggle action=show source=git_status position=right<CR>')

-- Telescope
