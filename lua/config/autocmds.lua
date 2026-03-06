-- Autocmds loaded on VeryLazy event

local function set_highlights()
  local function get_hl(name)
    return vim.api.nvim_get_hl(0, { name = name, link = false })
  end

  -- Global overrides (all themes)
  vim.api.nvim_set_hl(0, "Comment", { italic = false, fg = "#7687a0" })
  vim.api.nvim_set_hl(0, "@keyword", { italic = false })

  -- Rainbow delimiter colors
  vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", { fg = "#4D94FF" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", { fg = "#9EFF2E" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#FF8800" })
  vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", { fg = "#FFDD00" })

  -- Rainbow indent guide colors (snacks.indent)
  vim.api.nvim_set_hl(0, "SnacksIndent1", { fg = "#5e2020" })
  vim.api.nvim_set_hl(0, "SnacksIndent2", { fg = "#4e4428" })
  vim.api.nvim_set_hl(0, "SnacksIndent3", { fg = "#2e4a2e" })
  vim.api.nvim_set_hl(0, "SnacksIndent4", { fg = "#2a4445" })
  vim.api.nvim_set_hl(0, "SnacksIndent5", { fg = "#2e3a5e" })
  vim.api.nvim_set_hl(0, "SnacksIndent6", { fg = "#3e2e5e" })
  vim.api.nvim_set_hl(0, "SnacksIndent7", { fg = "#5e3200" })
  vim.api.nvim_set_hl(0, "SnacksIndent8", { fg = "#1a4a4a" })

  -- Snacks picker borders (visible borders instead of blending into background)
  local bg = get_hl("Normal").bg
  local border = get_hl("FloatBorder").fg or 0x555555
  local green = get_hl("String").fg
  local red = get_hl("Error").fg

  vim.api.nvim_set_hl(0, "SnacksPickerBorder", { fg = border, bg = bg })
  vim.api.nvim_set_hl(0, "SnacksPicker", { bg = bg })
  vim.api.nvim_set_hl(0, "SnacksPickerPreviewBorder", { fg = border, bg = bg })
  vim.api.nvim_set_hl(0, "SnacksPickerPreview", { bg = bg })
  vim.api.nvim_set_hl(0, "SnacksPickerPreviewTitle", { fg = bg, bg = green })
  vim.api.nvim_set_hl(0, "SnacksPickerBoxBorder", { fg = border, bg = bg })
  vim.api.nvim_set_hl(0, "SnacksPickerInputBorder", { fg = border, bg = bg })
  vim.api.nvim_set_hl(0, "SnacksPickerInputSearch", { fg = red, bg = bg })
  vim.api.nvim_set_hl(0, "SnacksPickerListBorder", { fg = border, bg = bg })
  vim.api.nvim_set_hl(0, "SnacksPickerList", { bg = bg })
  vim.api.nvim_set_hl(0, "SnacksPickerListTitle", { fg = bg, bg = bg })

  -- Moonfly-specific overrides
  if vim.g.colors_name == "moonfly" then
    vim.api.nvim_set_hl(0, "@keyword", { italic = false, fg = "#AE81FF" })
    vim.api.nvim_set_hl(0, "@punctuation.delimiter", { fg = "#00D0D0" })
    vim.api.nvim_set_hl(0, "@punctuation.special", { fg = "#FF8800" })
    vim.api.nvim_set_hl(0, "@string", { fg = "#7AA26A" })
    vim.api.nvim_set_hl(0, "@string.special.symbol", { fg = "#EDF7D2" })
    vim.api.nvim_set_hl(0, "@tag.delimiter.heex", { fg = "#CDD6F4" })
    vim.api.nvim_set_hl(0, "@variable", { fg = "#CDD6F4" })
    vim.api.nvim_set_hl(0, "GitSignsAdd", { fg = "#A6E3A1" })
    vim.api.nvim_set_hl(0, "GitSignsAddCul", { fg = "#A6E3A1" })
    vim.api.nvim_set_hl(0, "GitSignsAddNr", { fg = "#A6E3A1" })
    vim.api.nvim_set_hl(0, "GitSignsChange", { fg = "#F9E2AF" })
    vim.api.nvim_set_hl(0, "GitSignsChangeCul", { fg = "#F9E2AF" })
    vim.api.nvim_set_hl(0, "GitSignsChangeNr", { fg = "#F9E2AF" })
    vim.api.nvim_set_hl(0, "GitSignsDelete", { fg = "#F38BA8" })
    vim.api.nvim_set_hl(0, "GitSignsDeleteCul", { fg = "#F38BA8" })
    vim.api.nvim_set_hl(0, "GitSignsDeleteNr", { fg = "#F38BA8" })
  end
end

vim.api.nvim_create_autocmd("ColorScheme", { callback = set_highlights })
set_highlights() -- apply immediately for current colorscheme
