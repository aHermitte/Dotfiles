-- Description: Wich key plugin for keybingins assist when typing
-- Also define new keybinds here for anything
return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  opts = {
    -- your configuration comes here
    -- or leave it empty to use the default settings
    -- refer to the configuration section below
  },
  keys = {
    {
      "<leader>?",
      function()
        require("which-key").show({ global = false })
      end,
      desc = "Buffer Local Keymaps (which-key)",
    },
    {
      "<leader><Right>",
      ":tabnext<CR>",
      desc = "Switch to next tab (right)",
    },
    {
      "<leader><Left>",
      ":tabNext<CR>",
      desc = "Switch to previous tab (left)",
    },
    {
      "<leader><Up>",
      ":tabnew<CR>",
      desc = "New tab",
    },
    {
      "<leader><Down>",
      ":tabclose<CR>",
      desc = "Close tab",
    },
    {
      "<leader>w",
      "^W",
      desc = "Window navigation",
    },
  },
}
