return {
  'sebkolind/impact.nvim',
  init = function()
    local impact = require 'impact'

    impact.setup {
      close_on_success = false,
    }

    impact.add_runner {
      filetypes = {
        'typescript',
        'typescriptreact',
      },
      commands = {
        file = 'jest %',
        suite = 'jest',
      },
    }

    vim.keymap.set('n', '<Leader>tf', impact.run_current_file, { desc = 'Run [T]est [F]ile' })
    vim.keymap.set('n', '<Leader>ts', impact.run_entire_suite, { desc = 'Run [T]est [S]uite' })

    vim.api.nvim_create_user_command('RunCurrentFile', "lua require'impact'.run_current_file()", {})
    vim.api.nvim_create_user_command('RunEntireSuite', "lua require'impact'.run_entire_suite()", {})
  end,
}
