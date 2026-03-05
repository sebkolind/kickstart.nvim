return {
  'stevearc/oil.nvim',
  opts = {},
  dependencies = { 'echasnovski/mini.icons' },
  config = function()
    require('oil').setup {}

    vim.api.nvim_set_keymap('n', '<C-e>', ':lua require("oil").open(vim.fn.expand("%:p:h"))<CR>', { noremap = true, silent = true })
  end,
}
