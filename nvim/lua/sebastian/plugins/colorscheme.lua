return {
  "rose-pine/neovim",
  name = "rose-pine",

  config = function()
    require("rose-pine").setup({
      variant = "main", -- auto, main, moon, or dawn
      dark_variant = true,
      dim_inactive_windows = false,
      extend_background_behind_borders = true,

      enable = {
        terminal = true,
        legacy_highlights = false, -- Improve compatibility for previous versions of Neovim
        migrations = true, -- Handle deprecated options automatically
      },

      styles = {
        bold = true,
        italic = false,
        transparency = false,
      },

      groups = {
        border = "muted",
        link = "iris",
        panel = "surface",

        error = "love",
        hint = "iris",
        info = "foam",
        note = "pine",
        todo = "rose",
        warn = "gold",

        git_add = "foam",
        git_change = "rose",
        git_delete = "love",
        git_dirty = "rose",
        git_ignore = "muted",
        git_merge = "iris",
        git_rename = "pine",
        git_stage = "iris",
        git_text = "rose",
        git_untracked = "subtle",

        h1 = "iris",
        h2 = "foam",
        h3 = "rose",
        h4 = "gold",
        h5 = "pine",
        h6 = "foam",
      },

      palette = {
        -- Override the builtin palette per variant
        -- moon = {
        --     base = '#18191a',
        --     overlay = '#363738',
        -- },
        dawn = { base = "#000000", overlay = "#21202e" },
        main = { base = "#000000", overlay = "#21202e" },
        moon = { base = "#000000", overlay = "#21202e" },
      },

      highlight_groups = {
        VertSplit = { fg = "muted", bg = "muted" },
        --["@variable"] = { fg = "#3e8fb0" },
      },

      before_highlight = function(group, highlight, palette)
        -- Disable all undercurls
        -- if highlight.undercurl then
        --     highlight.undercurl = false
        -- end
        --
        -- Change palette colour
        -- if highlight.fg == palette.pine then
        --     highlight.fg = palette.foam
        -- end
      end,
    })

    vim.cmd("colorscheme rose-pine")
    --vim.cmd("highlight Visual guibg=#333333")
    --vim.cmd("highlight Search guibg=#555555")
    --vim.cmd("highlight IncSearch guibg=#444444")

    -- vim.cmd("colorscheme rose-pine-main")
    -- vim.cmd("colorscheme rose-pine-moon")
    -- vim.cmd("colorscheme rose-pine-dawn")
  end,
}

-- Other color schemes you like
--      Carbon Fox part of the night fox collection
--      Tokyko Night (the normal and Josean versions)
--      rose pine
--      sonokai/andromeda style
