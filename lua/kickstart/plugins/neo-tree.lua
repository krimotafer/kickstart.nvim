-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

---@module 'lazy'
---@type LazySpec
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
    -- Changed from 'reveal' to 'float toggle' for a better pop-up experience
    { '\\', ':Neotree float toggle<CR>', desc = 'NeoTree Float Toggle', silent = true },
  },
  ---@module 'neo-tree'
  ---@type neotree.Config
  opts = {
    -- ADDED: Global window settings for floating mode
    window = {
      position = 'float',
      popup = {
        size = { height = '80%', width = '50%' }, -- Adjust these percentages as you like
        position = '50%', -- Centers the popup on screen
      },
    },
    filesystem = {
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
  },
}
