local builtin = require('telescope.builtin')
local tel = require('telescope')
local dapui = require("dapui")
local dap = require("dap")

local map = vim.api.nvim_set_keymap
local set = vim.keymap.set
local opts = { noremap = true, silent = true }

-- leader
vim.g.mapleader = ' '
map('n', '<leader>e', ':NvimTreeToggle<CR>', opts)

-- change "panels"
map('n', '<C-h>', '<C-w>h', opts)
map('n', '<C-l>', '<C-w>l', opts)
map('n', '<C-j>', '<C-w>j', opts)
map('n', '<C-k>', '<C-k>h', opts)

-- telescope
set('n', '<leader>sf', builtin.find_files, {})
-- set('n', '<leader>st', builtin.live_grep, {})
set('n', '<leader>st', tel.extensions.live_grep_args.live_grep_args, {})
set('n', '<leader>sb', builtin.buffers, {})
set('n', '<leader>sp', builtin.pickers, {})
set('n', '<leader>sr', builtin.resume, {})
set('n', '<leader>sh', builtin.help_tags, {})
-- dap mappings
set('n', 'du', dapui.toggle, {})
set('n', 'ds', dap.continue, {})
set('n', 'dt', dap.toggle_breakpoint, {})

-- bar bar
map('n', '<C-n>', '<Cmd>BufferPick<CR>', opts)
