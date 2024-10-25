local opts = { noremap = true, silent = true }
local bind = vim.keymap.set
-- set leader
bind({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- faster ins-completion
bind('i', '<C-n>', '<C-x><C-n>', opts)
bind('i', '<C-j>', '<Down>', opts)
bind('i', '<C-k>', '<Up>', opts)
bind('i', '<C-l>', '<Right>', opts)
bind('i', '<C-h>', '<Left>', opts)
bind('i', '<C-f>', '<C-x><C-f>', opts)

-- Project Navigation
--bind("n", "<leader>e", "<cmd>Ex<CR>", opts)

bind('n', 'x', '"_x', opts) -- delete without putting in register
bind('n', '<leader>d', '"_d', opts) -- Delete into void don't put in register
bind('v', '<leader>d', '"_d', opts)

-- Increment/decrement
bind('n', '+', '<C-a>', opts) -- go increment first number ahead
bind('n', '-', '<C-x>', opts) -- go decrement first number ahead

-- Select all
bind('n', '<C-a>', 'ggVG', opts) -- simple select all file
-- disable search highlighting
bind('n', '<Esc>', ':nohl<CR>', opts)
-- Keep me sane as long as i don't use it
bind('n', 'q', '<nop>', opts)
bind({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- save
bind('n', '<leader>w', ':w<CR>', opts) -- save current
bind('n', '<leader><leader>w', ':wa<CR>', opts) --save all
bind('n', '<leader>q', ':q!<CR>', opts) -- quit
bind('n', '<leader><leader>q', '<cmd>wa<cr><cmd>qa<cr>', opts) -- save all and exit
bind('n', '<leader>x', ':bp<bar>sp<bar>bn<bar>bd!<CR>', opts) --  close buffer without closing window

-- Move text up and down
bind('v', 'J', ":move '>+1<CR>gv-gv", opts)
bind('v', 'K', ":move '<-2<CR>gv-gv", opts)
bind('x', 'J', ":move '>+1<CR>gv-gv", opts)
bind('x', 'K', ":move '<-2<CR>gv-gv", opts)

-- Cursor position sanity
bind('n', 'n', 'nzzzv', opts) -- when searching
bind('n', 'N', 'Nzzzv', opts) -- when searching

-- TODO
-- Yank in system clipboard
-- COPY in system clipboard
bind('v', '<leader>Y', '"+y')
bind('n', '<leader>P', '"+p')

-- keep selection when indenting
bind('v', '<', '<gv', opts)
bind('v', '>', '>gv', opts)

-- Search and Replace word under cursor
bind('n', '<leader>r', [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Make File executable
bind('n', '<leader>X', '<cmd>!chmod +x %<CR>', opts)

-- Split window
bind('n', '<leader>S', ':split<CR>', { silent = true })
bind('n', '<leader>s', ':vsplit<CR>', { silent = true })

-- Resize window
bind('n', '<C-S-Left>', '10<C-w><', opts)
bind('n', '<C-S-Right>', '10<C-w>>', opts)
bind('n', '<C-S-Up>', '10<C-w>+', opts)
bind('n', '<C-S-Down>', '20<C-w>-', opts)

-- Split navigation
bind('n', 'L', '<cmd>bnext<CR>', opts)
bind('n', 'H', '<cmd>bprevious<CR>', opts)
bind('n', '<C-j>', '<C-W>j', opts)
bind('n', '<C-k>', '<C-W>k', opts)
bind('n', '<C-l>', '<C-W>l', opts)
bind('n', '<C-h>', '<C-W>h', opts)
bind('n', '<C-Down>', '<C-W>J', opts)
bind('n', '<C-Up>', '<C-W>K', opts)
bind('n', '<C-Right>', '<C-W>L', opts)
bind('n', '<C-Left>', '<C-W>H', opts)
bind('t', '<C-j>', '<C-\\><C-n><C-W><C-J>', opts)
bind('t', '<C-k>', '<C-\\><C-n><C-W><C-K>', opts)
bind('t', '<C-l>', '<C-\\><C-n><C-W><C-L>', opts)
bind('t', '<C-h>', '<C-\\><C-n><C-W><C-H>', opts)
bind('t', '<esc>', '<C-\\><C-n>', opts)

-- Duplicate and comment TODO add the commenting because for now its only duplicating
--bind({ 'n' }, '<leader>gc', 'mCyy<Plug>kommentary_line_default<cr>P`Cj', opts)
--bind({ 'v' }, '<leader>gc', 'YPmCgv<Plug>kommentary_visual_default<cr>`C<esc>', opts)
bind({ 'n' }, '<leader>c', 'mCyyp', opts)
bind({ 'v' }, '<leader>c', 'YPmCgv', opts)

-- Diagnostic keymaps
bind('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous [D]iagnostic message' })
bind('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next [D]iagnostic message' })
bind('n', 'gl', vim.diagnostic.open_float, { desc = 'Show diagnostic [E]rror messages' })
bind('n', 'gq', vim.diagnostic.setloclist, { desc = 'Open diagnostic [Q]uickfix list' })
