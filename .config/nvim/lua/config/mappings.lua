-- Mappings (plugin mappings live in their specs under lua/plugins/)
--
-- Built-ins worth knowing: [b ]b buffers, gt gT tabs, [d ]d diagnostics,
-- <C-l> clears search highlight, <C-v> visual block, <C-a> <C-x> increment/decrement.

local map = vim.keymap.set

-- Map leader to SPACE
vim.g.mapleader = " "

map('n', '<leader>', '<Nop>', { desc = 'Disallow space cursor jump' })

-- y/p use the system clipboard ('clipboard' option); these keep the GUI habits
map('x', '<C-c>', '"+y',             { desc = 'Copy to clipboard' })
map({ 'i', 'c' }, '<C-v>', '<C-r>+', { desc = 'Paste from clipboard' })

map('n', '<C-s>', '<Cmd>set spell!<CR>', { desc = 'Toggle spell checking' })

-- Close the buffer but keep the window layout
map('n', '<leader>x', function()
    local buf = vim.api.nvim_get_current_buf()
    vim.cmd.bprevious()
    if vim.api.nvim_get_current_buf() == buf then vim.cmd.enew() end
    pcall(vim.cmd, 'confirm bdelete ' .. buf)
end, { desc = 'Close current buffer' })

map('n', '<leader><C-h>', '<Cmd>tabprevious<CR>', { desc = 'Navigate to previous tab' })
map('n', '<leader><C-l>', '<Cmd>tabnext<CR>',     { desc = 'Navigate to next tab' })

map('t', '<Esc><Esc>', '<C-\\><C-n>', { desc = 'Exit terminal mode' })

map('n', '<leader>ga', function() require('custom.auto-git').toggle() end, { desc = 'Toggle auto-git' })
