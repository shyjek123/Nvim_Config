--set tree format, for file nav
vim.cmd("let g:netrw_liststyle = 3")

local opt = vim.opt
--line nums to be relative and turned on
opt.relativenumber = true
opt.number = true

-- tabs & indentation
opt.tabstop = 2 -- tabs = 2 spaces
opt.shiftwidth = 2 -- indents = 2 spaces
opt.expandtab = true -- expand tab to spaces
opt.autoindent = true -- copy indent from current line when starting new one

opt.wrap = false

-- search setings
opt.ignorecase = true
opt.smartcase = true -- if search has mixed case then it will apply a case sensitive search

opt.cursorline = true -- highlight cur line

opt.termguicolors = true -- force 24-bit rgb colors
opt.background = "dark" -- force colorscheme to be dark if possible
opt.signcolumn = "yes" -- always show sign column (next to nums), so it won't shift the code

--clipboard
opt.clipboard:append("unnamedplus") -- use system clipboard
-- Remap 'x' to delete without copying to clipboard
vim.api.nvim_set_keymap("n", "x", '"_x', { noremap = true, silent = true })
vim.api.nvim_set_keymap("v", "x", '"_x', { noremap = true, silent = true })

-- backspace
opt.backspace = "indent,eol,start"

-- split windows
opt.splitright = true
opt.splitbelow = true

-- turn off swapfile
opt.swapfile = false

vim.g.have_nerd_font = true

opt.undofile = true -- save undo history
opt.updatetime = 250 -- decrease update time
opt.timeoutlen = 300 -- decrease mapped seq wait time

-- Sets how nvim displays certain whitespace chars in editor
-- See :help list
-- and :help listchars
opt.list = true
opt.listchars = { tab = "» ", trail = "·", nbsp = "␣" }

opt.inccommand = "split" -- preview substitutions while typing

opt.scrolloff = 10 -- min num screen lines showing above and below cursor

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.highlight.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking (copying) text",
  group = vim.api.nvim_create_augroup("mainNvim-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
