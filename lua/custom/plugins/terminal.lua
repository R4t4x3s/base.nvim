return {
  'rebelot/terminal.nvim',
  opts = {
    layout = { open_cmd = 'horizontal new' },
    cmd = { vim.o.shell },
    autoclose = false,
  },
  config = function(_, config)
    require('terminal').setup(config)
    local opts = { noremap = true, silent = true }
    local bind = vim.keymap.set
    bind('t', '<C-\\><C-\\>', '<C-\\><C-n>', opts)

    vim.api.nvim_create_autocmd({ 'WinEnter', 'BufWinEnter', 'TermOpen' }, {
      callback = function(args)
        if vim.startswith(vim.api.nvim_buf_get_name(args.buf), 'term://') then
          vim.cmd 'startinsert'
        end
      end,
    })

    vim.api.nvim_create_autocmd('TermOpen', {
      command = [[setlocal nonumber norelativenumber winhl=Normal:NormalFloat]],
    })
    local term_map = require 'terminal.mappings'
    vim.keymap.set('n', '<leader>ot', term_map.toggle)
  end,
}
