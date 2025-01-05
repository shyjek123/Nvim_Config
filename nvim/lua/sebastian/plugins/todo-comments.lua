return {
  "folke/todo-comments.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local todo_comments = require("todo-comments")

    -- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "dn", function()
      todo_comments.jump_next()
    end, { desc = "Document Next todo comment" })

    keymap.set("n", "dp", function()
      todo_comments.jump_prev()
    end, { desc = "Document Previous todo comment" })

    todo_comments.setup()
  end,
}
