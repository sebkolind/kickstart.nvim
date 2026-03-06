return {
  -- You can easily change to a different colorscheme.
  -- Change the name of the colorscheme plugin below, and then
  -- change the command in the config to whatever the name of that colorscheme is.
  --
  -- If you want to see what colorschemes are already installed, you can use `:Telescope colorscheme`.
  'rebelot/kanagawa.nvim',
  name = 'kanagawa',
  priority = 1000, -- Make sure to load this before all the other start plugins.
  config = function()
    require('kanagawa').setup {
      -- Add your kanagawa configuration here if needed
      theme = 'wave', -- Load "wave" theme (default)
      colors = {
        theme = {
          all = {
            ui = {
              bg_gutter = 'none',
            },
          },
        },
      },
    }
    vim.cmd 'colorscheme kanagawa'
  end,
}
