return {
  'nvim-treesitter/nvim-treesitter',
  event = { 'BufReadPre', 'BufNewFile' },
  build = ':TSUpdate',
  config = function()
    require('nvim-treesitter.configs').setup {
      ensure_installed = {
        'lua',
        'vim',
        'rust',
        'python',
      },

      sync_install = false,
      auto_install = true,

      highlight = {
        enable = true,
        additional_vim_regex_highlighting = false,
      },
      autotag = {
        enable = true,
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = '<enter>',
          node_incremental = '<enter>',
          scope_incremental = false,
          node_decremental = '<bs>',
        },
      },
    }
  end,
}
