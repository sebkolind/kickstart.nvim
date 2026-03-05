return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>gS', '<cmd>G status<CR>', { desc = '[G]it [S]tatus' })
    vim.keymap.set('n', '<leader>G', '<cmd>G<CR>', { desc = '[G]it' })
  end,
}
