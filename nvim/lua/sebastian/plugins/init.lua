return {
  { "nvim-lua/plenary.nvim" },
  {
    "catgoose/nvim-colorizer.lua",
    event = "BufReadPre",
    opts = { -- set to setup table
      user_default_options = { tailwind = true, css = true },
      filetypes = { "css", "html" },
    },
  },
}
