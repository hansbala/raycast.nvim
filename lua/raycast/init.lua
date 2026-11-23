local M = {}

function M.apply(appearance, c)
  vim.o.background = appearance
  vim.cmd('highlight clear')
  vim.g.colors_name = 'raycast-' .. appearance

  local groups = {
    Normal       = { fg = c.fg, bg = c.bg },
    NormalFloat  = { fg = c.fg, bg = c.surface },
    FloatBorder  = { fg = c.muted, bg = c.surface },
    Visual       = { fg = c.fg, bg = c.surface },
    Cursor       = { fg = c.bg, bg = c.fg },
    CursorLine   = { bg = c.surface },
    ColorColumn  = { bg = c.surface },
    LineNr       = { fg = c.muted },
    CursorLineNr = { fg = c.fg, bold = true },
    SignColumn   = { bg = c.bg },
    WinSeparator = { fg = c.muted },
    StatusLine   = { fg = c.fg, bg = c.surface, bold = true },
    StatusLineNC = { fg = c.muted, bg = c.surface },
    Pmenu        = { fg = c.fg, bg = c.surface },
    PmenuSel     = { fg = c.bg, bg = c.fg },
    Search       = { fg = '#000000', bg = c.yellow },
    CurSearch    = { fg = '#000000', bg = c.cyan, bold = true },

    Comment      = { fg = c.muted, italic = true },
    Constant     = { fg = c.magenta },
    String       = { fg = c.green },
    Identifier   = { fg = c.fg },
    Function     = { fg = c.blue },
    Statement    = { fg = c.red },
    PreProc      = { fg = c.magenta },
    Type         = { fg = c.green },
    Special      = { fg = c.blue },
    Delimiter    = { fg = c.muted },

    DiagnosticError = { fg = c.red },
    DiagnosticWarn  = { fg = appearance == 'light' and c.magenta or c.yellow },
    DiagnosticInfo  = { fg = c.blue },
    DiagnosticHint  = { fg = c.green },
    DiffAdd         = { fg = c.green, bg = c.surface },
    DiffDelete      = { fg = c.red, bg = c.surface },
    DiffChange      = { fg = c.blue, bg = c.surface },
    DiffText        = { fg = c.bg, bg = c.blue, bold = true },
  }

  for name, attributes in pairs(groups) do
    vim.api.nvim_set_hl(0, name, attributes)
  end
end

return M
