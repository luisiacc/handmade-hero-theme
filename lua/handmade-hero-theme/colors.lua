local palette = {
  NONE = "none",
  back = "#232323",
  margin = "#262626",
  margin_hover = "#333333",
  margin_active = "#404040",
  highlight_cursor_line = "#121E12",
  highlight = "#703419",
  mark = "#808080",
  text_default ="#b69e7f", -- "#A08563",
  at_highlight = "#ACD7DD",
  comment = "#7D7D7D",
  keyword = "#DBB316",
  -- keyword = "#f4c03e",
  str_constant = "#627e28", -- #6B8E23",
  include = "#627e28", -- #6B8E23",
  preproc = "#DAB98F",
  special_character = "#FF0000",
  ghost_character = "#4D5B3C",
  paste = "#FFBB00",
  undo = "#80005D",
  highlight_junk = "#A18430",
  highlight_white = "#003A3A",
  bar = "#262329",
  bar_active = "#A8A8A8",
  base = "#c09f54",
  pop1 = "#262329",
  pop2 = "#A18439",
  line_numbers_back = "#202020",
  line_numbers_text = "#484848",
  type = "#A18439",
  functionh = "#d86c48",
  macro = "#456E67",
  coder_command = "#FFFFFF",
  operator = "#C8964B",
  operator_alt = "#ff5555",
  -- blue = "#8aa7c4"
  blue = "#8196aa"
}

palette["at_cursor"] = palette.back

-- these are backgrounds
palette.diff = {
  add = "#26332c",
  change = "#273842",
  delete = "#572E33",
  text = "#314753",
}

local M = {}

function M.config(config)
  config = config or require("handmade-hero-theme.config")
  local colors = palette

  if config.transparent_mode then
    local transparent = {
      background = colors.none,
      background_dark = colors.none,
    }
    colors = vim.tbl_extend("force", colors, transparent)
  end
  return colors
end

return M
