return {
  'stevearc/oil.nvim',
  opts = {},
  config = function()
    require('oil').setup()
    vim.keymap.set('n', '<leader>o', ':Oil<CR>', {desc = "Edit current dir"})
  end,
  -- Optional dependencies
  dependencies = { "nvim-tree/nvim-web-devicons" },
}
