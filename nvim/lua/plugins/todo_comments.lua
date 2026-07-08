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
    todo_comments.setup({
      keywords = {
        FIX = {
          icon = " ",
          color = "error",
          alt = { "FAILED", "FIXME", "BUG", "FIXIT", "ISSUE", "REMOVE", "ERROR" },
        },

        TODO = {
          icon = " ",
          color = "info",
          alt = { "ADD", "PLAN" },
        },

        DONE = {
          icon = " ",
          color = "hint",
          alt = { "PASSED" },
        },

        HACK = {
          icon = " ",
          color = "warning",
        },

        WARN = {
          icon = " ",
          color = "warning",
          alt = { "WARNING", "XXX" },
        },

        PERF = {
          icon = " ",
          color = "purple",
          alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" },
        },

        INFO = {
          icon = " ",
          color = "info",
        },

        NOTE = {
          icon = "󰎚 ",
          color = "default",
        },

        TEST = {
          icon = "⏲ ",
          color = "test",
          alt = { "TESTING", "PASSED", "FAILED" },
        },
      },

      colors = {
        error   = { "DiagnosticError", "ErrorMsg", "#fb4934" }, -- red
        warning = { "DiagnosticWarn", "WarningMsg", "#fabd2f" }, -- yellow
        info    = { "DiagnosticInfo", "#83a598" }, -- blue
        hint    = { "DiagnosticHint", "#8ec07c" }, -- aqua/green
        default = { "Identifier", "#928374" }, -- gray
        test    = { "Identifier", "#d3869b" }, -- purple
        purple  = { "Constant", "#d3869b" }, -- PERF
      },
    })
    -- todo_comments.setup({
    --
    --
    --   keywords = {
    --     FIX = {
    --       icon = " ", -- icon used for the sign, and in search results
    --       color = "error", -- can be a hex color, or a named color (see below)
    --       alt = { "FAILED", "FIXME", "BUG", "FIXIT", "ISSUE", "REMOVE", "ERROR" }, -- a set of other keywords that all map to this FIX keywords
    --       -- signs = false, -- configure signs for some keywords individually
    --     },
    --     TODO = { icon = " ", color = "#04fbe3", alt = { "ADD", "PLAN" } },
    --     DONE = { icon = " ", color = "#04fbe3", alt = { "PASSED" } },
    --     HACK = { icon = " ", color = "warning" },
    --     WARN = { icon = " ", color = "warning", alt = { "WARNING", "XXX" } },
    --     PERF = { icon = " ", alt = { "OPTIM", "PERFORMANCE", "OPTIMIZE" } },
    --     INFO = { icon = " ", color = "hint", alt = { "" } },
    --     NOTE = { icon = " ", color = "default", alt = { "" } },
    --     TEST = { icon = "⏲ ", color = "test", alt = { "TESTING", "PASSED", "FAILED" } },
    --
    --     error = { "DiagnosticError", "ErrorMsg", "#DC2626" },
    --     warning = { "DiagnosticWarn", "WarningMsg", "#FBBF24" },
    --     info = { "DiagnosticInfo", "#2563EB" },
    --     hint = { "DiagnosticHint", "#10B981" },
    --     default = { "Identifier", "#7C3AED" },
    --     test = { "Identifier", "#FF00FF" },
    --   },
    -- })
  end,
}
