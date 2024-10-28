return {
  'navarasu/onedark.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    local theme = require 'onedark'
    theme.setup {
      -- Main options --
      style = 'warmer', -- Default theme style. Choose between 'dark', 'darker', 'cool', 'deep', 'warm', 'warmer' and 'light'
      transparent = true, -- Show/hide background
      term_colors = false, -- Change terminal color as per the selected theme style
      ending_tildes = false, -- Show the end-of-buffer tildes. By default they are hidden
      cmp_itemkind_reverse = false, -- reverse item kind highlights in cmp menu

      -- toggle theme style ---
      toggle_style_key = nil, -- keybind to toggle theme style. Leave it nil to disable it, or set it to a string, for example "<leader>ts"
      toggle_style_list = {}, -- List of styles to toggle between

      -- Change code style ---
      -- Options are italic, bold, underline, none
      -- You can configure multiple style with comma separated, For e.g., keywords = 'italic,bold'
      code_style = {
        comments = 'italic',
        keywords = 'none',
        functions = 'none',
        strings = 'none',
        variables = 'none',
      },

      -- Lualine options --
      lualine = {
        transparent = false, -- lualine center bar transparency
      },

      -- Custom Highlights --
      colors = {
        -- fg = '#ffffff',
        params = '#00b295',
      }, -- Override default colors
      highlights = {
        ['@variable'] = { fg = '$fg' },
        ['@variable.member'] = { fg = '$fg' },
        ['@function.method'] = { fg = '$fg' },
        ['@lsp.type.property'] = { fg = '$fg' },
        ['@punctuation'] = { fg = '$fg' },
        ['@punctuation.bracket'] = { fg = '$fg' },
        ['Structure'] = { fg = '$yellow' },
        ['@structure'] = { fg = '$yellow' },
        ['@type'] = { fg = '$yellow' },
        ['@type.builtin'] = { fg = '$yellow' },
        ['@function.method.call'] = { fg = '$orange' },
        ['@function.call'] = { fg = '$orange' },
        ['@variable.parameter'] = { fg = '$params' },
        ['@lsp.type.parameter'] = { fg = '$params' },
        ['@lsp.parameter'] = { fg = '$params' },
        ['@keyword.coroutine'] = { fg = '$red' }, -- Javascript `async`
        ['@function.builtin'] = { fg = '$red' }, -- Javascript `console`
        ['@variable.builtin'] = { fg = '$red' }, -- Javascript `console`
      }, -- Override highlight groups

      -- Plugins Config --
      diagnostics = {
        darker = true, -- darker colors for diagnostic
        undercurl = true, -- use undercurl instead of underline for diagnostics
        background = true, -- use background color for virtual text
      },
    }
    theme.load()
  end,
}
