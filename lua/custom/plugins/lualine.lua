return {
  'nvim-lualine/lualine.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {
    options = {
      icons_enabled = true,
      component_separators = '|',
      section_separators = ' ',
      theme = 'onedark',
    },
    -- sections = {
    --   lualine_a = { 'mode' },
    --   lualine_b = { 'branch', 'diff', 'diagnostics' },
    --   lualine_c = { 'filename' },
    --   lualine_x = { 'encoding', 'fileformat', 'filetype' },
    --   lualine_y = { 'progress' },
    --   lualine_z = { 'location' },
    -- },
    sections = {},
    inactive_sections = {},
    tabline = {},
    winbar = {
      lualine_a = {
        { 'filename', path = 1 },
      },
      lualine_b = {},
      lualine_c = {},
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {},
    },
    inactive_winbar = {
      lualine_a = {
        { 'filename', path = 1 },
      },
      lualine_b = {},
      lualine_c = {},
      lualine_x = { 'location' },
      lualine_y = {},
      lualine_z = {},
    },
  },
}
