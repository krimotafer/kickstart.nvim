-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information

---@module 'lazy'
---@type LazySpec
return {
  -- 1. Catppuccin Theme (Installed, but waiting in the background)
  {
    'catppuccin/nvim',
    name = 'catppuccin',
    priority = 1000,
    -- I removed the "config" line here so it doesn't automatically turn on at launch!
  },

  -- 2. OneDark Theme (Installed AND set to launch by default)
  {
    'navarasu/onedark.nvim',
    name = 'onedark',
    priority = 1000,
    config = function()
      require('onedark').setup {
        style = 'dark', -- You can change this to 'dark', 'cool', 'deep', etc.
      }
      require('onedark').load() -- This activates OneDark when Neovim opens
    end,
  },
}
