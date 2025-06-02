-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<leader>d', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { '<leader>nb', ':Neotree buffers<CR>', desc = 'NeoTree buffers', silent = true },
  },
  opts = {
    window = {
      auto_expand_width = true,
    },
    filesystem = {
      filtered_items = {
        visible = true,
        show_hidden_count = true,
        hide_dotfiles = false,
        hide_gitignored = false,
        hide_by_name = {
          'thumbs.db',
          '.git',
          '.DS_Store',
        },
        never_show = {},
      },
      window = {
        mappings = {
          ['<leader>nd'] = 'close_window',
        },
      },
    },
  },
}
