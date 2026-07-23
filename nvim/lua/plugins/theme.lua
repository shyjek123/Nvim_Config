return {
  {
    dir = vim.fn.stdpath("config"),
    name = "cursor-dark-local",
    lazy = false,
    priority = 1000,
    config = function()
      vim.o.termguicolors = true
      vim.o.background = "dark"
      vim.cmd.colorscheme("cursor-dark")
    end,
  },
}
-- vim.cmd("colorscheme industry")
-- INFO: this is midnight.nvim theme
-- return {
--   {
--     "dasupradyumna/midnight.nvim",
--     lazy = false,
--     priority = 1000,
--     config = function()
--       vim.cmd.colorscheme("midnight")
--     end,
--   },
-- }
  -- INFO: this is grubox theme
  -- {
  --   "ellisonleao/gruvbox.nvim",
  --   priority = 1000, -- load before other UI plugins
  --   lazy = false,    -- load on startup so colorscheme is available
  --   config = function()
  --     require("gruvbox").setup({
  --       terminal_colors = true,
  --       undercurl = true,
  --       underline = true,
  --       bold = true,
  --       italic = {
  --         strings = true,
  --         comments = true,
  --         operators = false,
  --         folds = true,
  --       },
  --       contrast = "hard", -- "hard", "soft", or ""
  --       transparent_mode = false,
  --     })
  --
  --     vim.o.background = "dark"
  --     vim.cmd.colorscheme("gruvbox")
  --   end,
  -- },
  -- INFO: this is Rosepine theme
--
-- return {
-- 	"rose-pine/neovim",
-- 	name = "rose-pine",
-- 	config = function()
-- 		vim.cmd("colorscheme rose-pine")
-- 	end
-- }


