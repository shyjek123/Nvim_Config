return {
  "echasnovski/mini.nvim",
  version = false,
  config = function()
    require("mini.ai").setup()
    require("mini.align").setup()
    require("mini.bracketed").setup()
    --require("mini.colors").setup()
    require("mini.completion").setup()
    require("mini.cursorword").setup()
    require("mini.doc").setup()
    require("mini.git").setup()
    --require("mini.hues").setup({ background = "#000000", foreground = "#555555" })
    --require("mini.move").setup()
    require("mini.notify").setup()
    require("mini.pick").setup()
    require("mini.surround").setup()
    require("mini.test").setup()
    require("mini.extra").setup()
  end,
}
