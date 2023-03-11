local util = require("handmade-hero-theme.util")
local theme = require("handmade-hero-theme.theme")

local M = {}

function M.colorscheme()
  util.load(theme.setup())
end

return M
