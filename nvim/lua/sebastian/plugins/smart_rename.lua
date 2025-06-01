return {
  "smjonas/inc-rename.nvim",
  opts = {
    input_buffer_type = "dressing",
  },
  config = function()
    require("inc_rename").setup({})
    vim.keymap.set("n", "<leader>rn", ":IncRename ")
  end,
}
