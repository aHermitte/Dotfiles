return {
  "xiyaowong/transparent.nvim",
  config = function()
    require('transparent').setup {
      extra_groups = {
        "NeoTreeNormal",
        "NeoTreeNormalNC",
        "NormalFloat",
      },
    }
    vim.keymap.set('n', '<leader>tr', ':TransparentToggle <CR>', {desc = "Toggle NeoVim transparency"})
  end,
}
