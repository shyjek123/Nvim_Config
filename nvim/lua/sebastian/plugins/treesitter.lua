return {
  "nvim-treesitter/nvim-treesitter",
  event = { "BufReadPre", "BufNewFile" },
  build = ":TSUpdate",
  config = function()
    -- import nvim-treesitter plugin
    local treesitter = require("nvim-treesitter.configs")

    -- configure treesitter
    treesitter.setup({
      -- enable syntax highlighting
      highlight = {
        enable = true,
      },
      -- enable indentation
      indent = { enable = true },

      fold = { enable = true },

      -- ensure these language parsers are installed
      ensure_installed = {
        "json",
        "javascript",
        "typescript",
        "lua",
        "vim",
        "gitignore",
        "vimdoc",
        "c",
        "zig",
        "hurl",
        "css",
        "html",
        "python",
      },
      incremental_selection = {
        enable = true,
        keymaps = {
          init_selection = "<C-space>",
          node_incremental = "<C-space>",
          scope_incremental = false,
          node_decremental = "<bs>",
        },
      },
      modules = {},
      auto_install = true,
      sync_install = false,
      ignore_install = {},
    })
    -- Set fold method to 'expr' and use Treesitter's fold expression
    vim.opt.foldmethod = "expr"
    vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
    -- Optional: Set fold level (0 means all folds are closed)
    -- Disable folding at startup
    vim.opt.foldlevel = 99
  end,
}
