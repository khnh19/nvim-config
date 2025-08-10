return {
  'nvim-telescope/telescope.nvim',
  version = '^0.1.4',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local builtin = require 'telescope.builtin'
    local actions = require 'telescope.actions'

    vim.keymap.set('n', '<leader>f', builtin.find_files, {})
    vim.keymap.set('n', '<leader>g', builtin.live_grep, {})

    require('telescope').setup {
      defaults = {
        mappings = {
          i = {
            ['esc'] = actions.close,
          },
        },
        file_ignore_patterns = {
          '.git',
          '%.lock',
          'node_modules',
        },
        dynamic_preview_title = true,
        path_display = { 'smart' },
      },
      pickers = {
        find_files = {
          hidden = true,
        },
      },
      layout_config = {
        horizontal = {
          preview_cutoff = 100,
          preview_width = 0.5,
        },
      },
    }
  end,
}
