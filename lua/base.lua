vim.g.mapleader = ','
vim.g.maplocalleader = ','

-- Set to true if you have a Nerd Font installed and selected in the terminal
vim.g.have_nerd_font = true

-- [[ Setting options ]]
-- See `:help vim.opt`
-- NOTE: You can change these options as you wish!
--  For more options, you can see `:help option-list`

-- Make line numbers default
vim.opt.number = false
vim.opt.relativenumber = false

-- Enable mouse mode, can be useful for resizing splits for example!
vim.opt.mouse = 'a'

-- Don't show the mode, since it's already in the status line
--
vim.opt.showmode = false

-- Sync clipboard between OS and Neovim.
--  Remove this option if you want your OS clipboard to remain independent.
--  See `:help 'clipboard'`
vim.opt.clipboard = 'unnamedplus'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.undofile = true

-- Case-insensitive searching UNLESS \C or one or more capital letters in the search term
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Keep signcolumn on by default
vim.opt.signcolumn = 'yes'

-- Decrease update time
vim.opt.updatetime = 50

-- Decrease mapped seq0

-- Configure how new splits should be opened
vim.opt.splitright = true
vim.opt.splitbelow = true

-- Sets how neovim will display certain whitespace characters in the editor.
--  See `:help 'list'`
--  and `:help 'listchars'`
-- vim.opt.list = true
-- vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live, as you type!
vim.opt.inccommand = 'split'

-- Show which line your cursor is on
vim.opt.cursorline = false

-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10

-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Set highlight on search, but clear on pressing <Esc> in normal mode
vim.opt.hlsearch = true
-- vim.opt.foldmethod = 'indent'
vim.opt.expandtab = true -- converts tabs to spaces
vim.opt.tabstop = 4 -- number of space per tab
vim.opt.shiftwidth = 4 -- number of spaces for indentation
vim.opt.smartindent = true

-- Automatic Insert Mode when entering a terminal buffer
vim.cmd [[ autocmd BufEnter * if &buftype ==# 'terminal' | startinsert! | endif ]]

-- Better cursor line
-- Create an autocmd group for CursorLine
vim.api.nvim_create_augroup('CursorLine', { clear = true })

-- Set cursorline on VimEnter, WinEnter, and BufWinEnter
vim.api.nvim_create_autocmd({ 'VimEnter', 'WinEnter', 'BufWinEnter' }, {
  group = 'CursorLine',
  callback = function()
    vim.wo.cursorline = true
  end,
})

-- Remove cursorline on WinLeave
vim.api.nvim_create_autocmd('WinLeave', {
  group = 'CursorLine',
  callback = function()
    vim.wo.cursorline = false
  end,
})
