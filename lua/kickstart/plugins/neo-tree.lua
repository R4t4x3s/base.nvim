-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim
--
return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '<leader>m', ':Neotree toggle<CR>', { desc = 'NeoTree toggle' } },
    { '<leader>n', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } },
  },
  opts = {
    enable_diagnostic = false,
    default_component_configs = {
      icon = {
        folder_empty = '-',
      },
    },
    filesystem = {
      window = {
        mappings = {
          ['<leader>m'] = 'close_window',
        },
      },
      filtered_items = {
        visible = false, -- when true, they will just be displayed differently than normal items
        hide_dotfiles = false,
        hide_gitignored = true,
        hide_hidden = true, -- only works on Windows for hidden files/directories
        hide_by_name = {
          'node_modules',
        },
        hide_by_pattern = { -- uses glob style patterns
          --"*.meta",
          --"*/src/*/tsconfig.json",
        },
        always_show = { -- remains visible even if other settings would normally hide it
          --".gitignored",
        },
        never_show = { -- remains hidden even if visible is toggled to true, this overrides always_show
          --".DS_Store",
          --"thumbs.db"
        },
        never_show_by_pattern = { -- uses glob style patterns
          --".null-ls_*",
        },
      },
      follow_current_file = { -- This will find and focus the file in the active buffer every
        enabled = true, -- time the current file is changed while the tree is open.
      },
      group_empty_dirs = false, -- when true, empty folders will be grouped together
      hijack_netrw_behavior = 'open_default',
      use_libuv_file_watcher = false,
    },
  },
}
