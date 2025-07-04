return {
  "nvim-lualine/lualine.nvim",
  config = function()
    require("lualine").setup {
      options = { section_separators = "" },
      sections = {
        lualine_a = { "mode" },
        lualine_b = { { "filename", path = 3 } },
        lualine_c = { "diagnostics" },
        lualine_x = { "filetype" },
        lualine_y = { "diff" },
        lualine_z = { "branch" },
      },
    }
  end,
}
