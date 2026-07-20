-- Cursor Dark (Anysphere v0.0.3)
-- Ported from Cursor IDE: theme-cursor/themes/cursor-dark-color-theme.json

local function apply_cursor_dark()
  vim.cmd("hi clear")
  if vim.fn.exists("syntax_on") == 1 then
    vim.cmd("syntax reset")
  end

  vim.g.colors_name = "cursor-dark"
  vim.o.termguicolors = true
  vim.o.background = "dark"

  local c = {
    bg            = "#181818",
    bg_dark       = "#141414",
    bg_highlight  = "#262626",
    bg_visual     = "#404040",
    bg_popup      = "#141414",
    bg_status     = "#141414",
    bg_cursorline = "#262626",
    fg            = "#F0F0F0",
    fg_dim        = "#A8A8A8",
    fg_mute       = "#6E6E6E",
    border        = "#2A2A2A",
    cursor        = "#F0F0F0",

    blue          = "#81A1C1",
    blue_bright   = "#87A6C4",
    cyan          = "#88C0D0",
    green         = "#3FA266",
    green_bright  = "#70B489",
    red           = "#E34671",
    red_bright    = "#FC6B83",
    yellow        = "#F1B467",
    orange        = "#D2943E",
    gold          = "#F8C762",
    magenta       = "#B48EAD",
    white         = "#FFFFFF",
    black         = "#242424",

    comment       = "#8A8A8A",
    keyword       = "#82D2CE",
    string        = "#E394DC",
    function_     = "#EFB080",
    method        = "#EBC88D",
    type          = "#87C3FF",
    class         = "#EFB080",
    variable      = "#AAA0FA", -- purple (const / property look)
    variable_alt  = "#87C3FF",
    property      = "#AAA0FA",
    constant      = "#AAA0FA",
    number        = "#EBC88D",
    parameter     = "#F8C762",
    decorator     = "#A8CC7C",
    language      = "#CC7C8A",
    tag           = "#87C3FF",
    attribute     = "#AAA0FA",
    operator      = "#D6D6DD",
    punctuation   = "#D6D6DD",
    namespace     = "#CCCCCC",
    preprocessor  = "#A8CC7C",
  }

  local function hi(group, opts)
    vim.api.nvim_set_hl(0, group, opts)
  end

  -- Editor UI
  hi("Normal",       { fg = c.fg, bg = c.bg })
  hi("NormalNC",     { fg = c.fg, bg = c.bg })
  hi("NormalFloat",  { fg = c.fg, bg = c.bg_popup })
  hi("FloatBorder",  { fg = c.border, bg = c.bg_popup })
  hi("FloatTitle",   { fg = c.fg, bg = c.bg_popup, bold = true })
  hi("Cursor",       { fg = c.bg, bg = c.cursor })
  hi("lCursor",      { fg = c.bg, bg = c.cursor })
  hi("CursorLine",   { bg = c.bg_cursorline })
  hi("CursorColumn", { bg = c.bg_cursorline })
  hi("CursorLineNr", { fg = c.fg, bg = c.bg_cursorline, bold = true })
  hi("LineNr",       { fg = c.fg_mute })
  hi("SignColumn",   { fg = c.fg_mute, bg = c.bg })
  hi("ColorColumn",  { bg = c.bg_highlight })
  hi("Conceal",      { fg = c.fg_mute })
  hi("Directory",    { fg = c.cyan })
  hi("EndOfBuffer",  { fg = c.bg })
  hi("Folded",       { fg = c.fg_dim, bg = c.bg_dark })
  hi("FoldColumn",   { fg = c.fg_mute, bg = c.bg })
  hi("MatchParen",   { bg = "#3A3A3A", bold = true })
  hi("ModeMsg",      { fg = c.fg, bold = true })
  hi("MsgArea",      { fg = c.fg, bg = c.bg })
  hi("MoreMsg",      { fg = c.cyan })
  hi("NonText",      { fg = c.fg_mute })
  hi("Pmenu",        { fg = c.fg, bg = c.bg_popup })
  hi("PmenuSel",     { fg = c.fg, bg = "#343434" })
  hi("PmenuSbar",    { bg = c.bg_dark })
  hi("PmenuThumb",   { bg = "#3A3A3A" })
  hi("Question",     { fg = c.cyan })
  hi("QuickFixLine", { bg = c.bg_highlight, bold = true })
  hi("Search",       { bg = "#4A6A74", fg = c.fg })
  hi("IncSearch",    { bg = "#5A8A96", fg = c.bg, bold = true })
  hi("CurSearch",    { bg = "#5A8A96", fg = c.bg, bold = true })
  hi("SpecialKey",   { fg = c.fg_mute })
  hi("SpellBad",     { undercurl = true, sp = c.red })
  hi("SpellCap",     { undercurl = true, sp = c.yellow })
  hi("SpellLocal",   { undercurl = true, sp = c.cyan })
  hi("SpellRare",    { undercurl = true, sp = c.magenta })
  hi("StatusLine",   { fg = c.fg_dim, bg = c.bg_status })
  hi("StatusLineNC", { fg = c.fg_mute, bg = c.bg_status })
  hi("TabLine",      { fg = c.fg_mute, bg = c.bg_dark })
  hi("TabLineFill",  { bg = c.bg_dark })
  hi("TabLineSel",   { fg = c.fg, bg = c.bg })
  hi("Title",        { fg = c.cyan, bold = true })
  hi("VertSplit",    { fg = c.border, bg = c.bg })
  hi("WinSeparator", { fg = c.border, bg = c.bg })
  hi("Visual",       { bg = c.bg_visual })
  hi("VisualNOS",    { bg = c.bg_visual })
  hi("WarningMsg",   { fg = c.yellow })
  hi("ErrorMsg",     { fg = c.red })
  hi("WildMenu",     { fg = c.fg, bg = "#343434" })
  hi("Whitespace",   { fg = "#505050" })
  hi("WinBar",       { fg = c.fg_dim, bg = c.bg })
  hi("WinBarNC",     { fg = c.fg_mute, bg = c.bg })

  -- Diff / Git
  hi("DiffAdd",    { bg = "#1F3328" })
  hi("DiffChange", { bg = "#332A1A" })
  hi("DiffDelete", { bg = "#33141F", fg = c.red_bright })
  hi("DiffText",   { bg = "#4A3A1A" })
  hi("Added",      { fg = c.green_bright })
  hi("Changed",    { fg = c.yellow })
  hi("Removed",    { fg = c.red_bright })
  hi("GitSignsAdd",    { fg = c.green })
  hi("GitSignsChange", { fg = c.orange })
  hi("GitSignsDelete", { fg = c.red })

  -- Diagnostics / LSP
  hi("DiagnosticError", { fg = c.red })
  hi("DiagnosticWarn",  { fg = c.yellow })
  hi("DiagnosticInfo",  { fg = c.cyan })
  hi("DiagnosticHint",  { fg = c.blue })
  hi("DiagnosticOk",    { fg = c.green })
  hi("DiagnosticUnderlineError", { undercurl = true, sp = c.red })
  hi("DiagnosticUnderlineWarn",  { undercurl = true, sp = c.yellow })
  hi("DiagnosticUnderlineInfo",  { undercurl = true, sp = c.cyan })
  hi("DiagnosticUnderlineHint",  { undercurl = true, sp = c.blue })
  hi("LspReferenceText",  { bg = "#2A2A2A" })
  hi("LspReferenceRead",  { bg = "#2A2A2A" })
  hi("LspReferenceWrite", { bg = "#2A2A2A" })
  hi("LspInlayHint",      { fg = c.fg_mute, italic = true })
  hi("LspSignatureActiveParameter", { fg = c.parameter, bold = true })

  -- Syntax
  hi("Comment",        { fg = c.comment, italic = true })
  hi("Constant",       { fg = c.constant })
  hi("String",         { fg = c.string })
  hi("Character",      { fg = c.string })
  hi("Number",         { fg = c.number })
  hi("Boolean",        { fg = c.keyword })
  hi("Float",          { fg = c.number })
  hi("Identifier",     { fg = c.variable })
  hi("Function",       { fg = c.function_ })
  hi("Statement",      { fg = c.keyword })
  hi("Conditional",    { fg = c.keyword })
  hi("Repeat",         { fg = c.keyword })
  hi("Label",          { fg = c.class })
  hi("Operator",       { fg = c.operator })
  hi("Keyword",        { fg = c.keyword })
  hi("Exception",      { fg = c.keyword })
  hi("PreProc",        { fg = c.preprocessor })
  hi("Include",        { fg = c.preprocessor })
  hi("Define",         { fg = c.preprocessor })
  hi("Macro",          { fg = c.decorator })
  hi("PreCondit",      { fg = c.preprocessor })
  hi("Type",           { fg = c.type })
  hi("StorageClass",   { fg = c.keyword })
  hi("Structure",      { fg = c.class })
  hi("Typedef",        { fg = c.type })
  hi("Special",        { fg = c.method })
  hi("SpecialChar",    { fg = "#D6D6DD" })
  hi("Tag",            { fg = c.tag })
  hi("Delimiter",      { fg = c.punctuation })
  hi("SpecialComment", { fg = c.comment, italic = true })
  hi("Debug",          { fg = c.keyword })
  hi("Underlined",     { underline = true })
  hi("Ignore",         { fg = c.fg_mute })
  hi("Error",          { fg = c.red })
  hi("Todo",           { fg = c.gold, bold = true })

  -- Treesitter
  hi("@comment",              { fg = c.comment, italic = true })
  hi("@comment.documentation",{ fg = c.comment, italic = true })
  hi("@punctuation",          { fg = c.punctuation })
  hi("@punctuation.bracket",  { fg = c.punctuation })
  hi("@punctuation.delimiter",{ fg = c.punctuation })
  hi("@punctuation.special",  { fg = c.keyword })
  hi("@constant",             { fg = c.constant })
  hi("@constant.builtin",     { fg = c.keyword })
  hi("@constant.macro",       { fg = c.decorator })
  hi("@string",               { fg = c.string })
  hi("@string.escape",        { fg = "#D6D6DD" })
  hi("@string.regexp",        { fg = "#D6D6DD" })
  hi("@character",            { fg = c.string })
  hi("@number",               { fg = c.number })
  hi("@boolean",              { fg = c.keyword })
  hi("@float",                { fg = c.number })
  hi("@function",             { fg = c.function_ })
  hi("@function.builtin",     { fg = c.keyword })
  hi("@function.call",        { fg = c.method })
  hi("@function.macro",       { fg = c.decorator })
  hi("@method",               { fg = c.method })
  hi("@method.call",          { fg = c.method })
  hi("@constructor",          { fg = c.type })
  hi("@parameter",            { fg = c.parameter })
  hi("@keyword",              { fg = c.keyword })
  hi("@keyword.function",     { fg = c.keyword })
  hi("@keyword.operator",     { fg = c.keyword })
  hi("@keyword.return",       { fg = c.keyword, italic = true })
  hi("@keyword.import",       { fg = c.keyword, italic = true })
  hi("@keyword.conditional",  { fg = c.keyword })
  hi("@keyword.repeat",       { fg = c.keyword })
  hi("@operator",             { fg = c.operator })
  hi("@type",                 { fg = c.type })
  hi("@type.builtin",         { fg = c.keyword })
  hi("@type.definition",      { fg = c.class })
  hi("@storageclass",         { fg = c.keyword })
  hi("@attribute",            { fg = c.attribute })
  hi("@property",             { fg = c.property })
  hi("@field",                { fg = c.property })
  hi("@variable",             { fg = c.variable })
  hi("@variable.builtin",     { fg = c.language })
  hi("@variable.parameter",   { fg = c.parameter })
  hi("@variable.member",      { fg = c.property })
  hi("@namespace",            { fg = c.namespace })
  hi("@module",               { fg = c.namespace })
  hi("@label",                { fg = c.class })
  hi("@tag",                  { fg = c.tag })
  hi("@tag.attribute",        { fg = c.attribute })
  hi("@tag.delimiter",        { fg = "#A4A4A4" })
  hi("@markup.heading",       { fg = c.cyan, bold = true })
  hi("@markup.strong",        { fg = c.gold, bold = true })
  hi("@markup.italic",        { fg = c.keyword, italic = true })
  hi("@markup.raw",           { fg = c.string })
  hi("@markup.link",          { fg = c.keyword })
  hi("@markup.link.url",      { fg = c.keyword, underline = true })
  hi("@markup.list",          { fg = "#D6D6DD" })
  hi("@markup.quote",         { fg = c.comment, italic = true })
  hi("@diff.plus",            { fg = c.string })
  hi("@diff.minus",           { fg = "#D6D6DD" })
  hi("@diff.delta",           { fg = c.function_ })

  hi("@lsp.type.variable",  { fg = c.variable })
  hi("@lsp.type.property",  { fg = c.property })
  hi("@lsp.typemod.variable.readonly", { fg = c.constant })
  hi("@lsp.typemod.variable.defaultLibrary", { fg = "#D6D6DD" })
  hi("@lsp.type.function",  { fg = c.method })
  hi("@lsp.type.method",    { fg = c.method })
  hi("@lsp.type.class",     { fg = c.type })
  hi("@lsp.type.interface", { fg = c.type })
  hi("@lsp.type.enum",      { fg = c.type })
  hi("@lsp.type.namespace", { fg = c.namespace })
  hi("@lsp.type.parameter", { fg = c.parameter })
  hi("@lsp.type.type",      { fg = c.class })
  hi("@lsp.typemod.function.declaration", { fg = c.function_, bold = true })
  hi("@lsp.typemod.method.declaration",   { fg = c.function_, bold = true })

  -- Plugins
  hi("TelescopeNormal",       { fg = c.fg, bg = c.bg_popup })
  hi("TelescopeBorder",       { fg = c.border, bg = c.bg_popup })
  hi("TelescopeTitle",        { fg = c.cyan, bold = true })
  hi("TelescopeSelection",    { bg = "#2A2A2A", fg = c.fg })
  hi("TelescopeMatching",     { fg = c.cyan, bold = true })
  hi("TelescopePromptPrefix", { fg = c.cyan })
  hi("NeoTreeNormal",         { fg = c.fg_dim, bg = c.bg_dark })
  hi("NeoTreeNormalNC",       { fg = c.fg_dim, bg = c.bg_dark })
  hi("NeoTreeWinSeparator",   { fg = c.border, bg = c.bg_dark })
  hi("NeoTreeRootName",       { fg = c.fg, bold = true })
  hi("NeoTreeDirectoryName",  { fg = c.cyan })
  hi("NeoTreeDirectoryIcon",  { fg = c.cyan })
  hi("NeoTreeFileName",       { fg = c.fg_dim })
  hi("NeoTreeGitAdded",       { fg = c.green_bright })
  hi("NeoTreeGitModified",    { fg = c.yellow })
  hi("NeoTreeGitDeleted",     { fg = c.red_bright })
  hi("NeoTreeGitUntracked",   { fg = c.cyan })
  hi("NeoTreeIndentMarker",   { fg = c.fg_mute })
  hi("WhichKey",              { fg = c.cyan })
  hi("WhichKeyGroup",         { fg = c.blue })
  hi("WhichKeyDesc",          { fg = c.fg })
  hi("WhichKeySeparator",     { fg = c.fg_mute })
  hi("WhichKeyFloat",         { bg = c.bg_popup })
  hi("WhichKeyBorder",        { fg = c.border })
  hi("FlashLabel",            { fg = c.bg, bg = c.red_bright, bold = true })
  hi("FlashMatch",            { fg = c.fg, bg = "#4A6A74" })
  hi("FlashCurrent",          { fg = c.bg, bg = c.cyan, bold = true })
  hi("NoiceCmdlinePopup",       { bg = c.bg_popup })
  hi("NoiceCmdlinePopupBorder", { fg = c.border })
  hi("LazyNormal",              { fg = c.fg, bg = c.bg_popup })
  hi("LazyButton",              { bg = "#2A2A2A" })
  hi("LazyH1",                  { fg = c.bg, bg = c.cyan, bold = true })

  -- Terminal ANSI
  vim.g.terminal_color_0  = c.black
  vim.g.terminal_color_1  = c.red_bright
  vim.g.terminal_color_2  = c.green
  vim.g.terminal_color_3  = c.orange
  vim.g.terminal_color_4  = c.blue
  vim.g.terminal_color_5  = c.magenta
  vim.g.terminal_color_6  = c.cyan
  vim.g.terminal_color_7  = c.fg
  vim.g.terminal_color_8  = "#A8A8A8"
  vim.g.terminal_color_9  = c.red_bright
  vim.g.terminal_color_10 = c.green_bright
  vim.g.terminal_color_11 = c.yellow
  vim.g.terminal_color_12 = c.blue_bright
  vim.g.terminal_color_13 = c.magenta
  vim.g.terminal_color_14 = c.cyan
  vim.g.terminal_color_15 = c.white
end

-- Activation for lazy.nvim (paste into theme.lua if you want it on disk):
return {
  {
    dir = vim.fn.stdpath("config"),
    name = "cursor-dark-local",
    lazy = false,
    priority = 1000,
    config = function()
      apply_cursor_dark()
    end,
  },
}
