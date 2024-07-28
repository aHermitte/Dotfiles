return {
  "akinsho/toggleterm.nvim",
  tag = '*',
  config = function()
    require("toggleterm").setup()
    local Terminal = require('toggleterm.terminal').Terminal

    local lazygit  = Terminal:new({ cmd = "lazygit", hidden = true, direction = 'float' })
    function _lazygit_toggle()
      lazygit:toggle()
    end
    vim.api.nvim_set_keymap("n", "<leader>tg", "<cmd>lua _lazygit_toggle()<CR>", { noremap = true, silent = true, desc = "Toggle lazygit" })

    local inception = Terminal:new({ cmd = "nvim", hidden = true, direction = 'float' });
    function _inception_toggle()
      inception:toggle()
    end
    vim.api.nvim_set_keymap("n", "<leader>ti", "<cmd>lua _inception_toggle()<CR>", { noremap = true, silent = true, desc = "How do I get out?" })

  end
}
