-- You can add your own plugins here or in other files in this directory!
--
-- See the kickstart.nvim README for more information
return {
  { 'savq/melange-nvim' },
  { 'scottmckendry/cyberdream.nvim' },
  { 'VDuchauffour/neodark.nvim' },
  { 'navarasu/onedark.nvim' },
  { 'Mofiqul/vscode.nvim', lazy = false, priority = 999 },
  {
    'folke/tokyonight.nvim',
    lazy = false,
    priority = 1000,
    opts = {},
    config = function(_, config)
      -- require('tokyonight').setup(config)
      -- vim.cmd.colorscheme 'tokyonight'
      -- TODO: we love this color clean up the whole config
      -- vim.opt.background = 'light', vim.cmd.colorscheme 'vscode'
    end,
  },
}
