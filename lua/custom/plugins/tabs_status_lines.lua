return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      icons_enabled = true,
      component_separators = '|',
      section_separators = ' ',
    },
    tabline = {
      lualine_a = { 'buffers' },
      lualine_z = { 'tabs' },
    },
  },
}
