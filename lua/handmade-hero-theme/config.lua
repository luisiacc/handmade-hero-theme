local config

-- shim vim for kitty and other generators
vim = vim or { g = {}, o = {} }

local function opt(key, default)
  key = "handmade_hero_theme__" .. key
  if vim.g[key] == nil then
    return default
  end
  if vim.g[key] == 0 then
    return false
  end
  return vim.g[key]
end

config = {
  comment_style = opt("comment_style", "NONE"),
  keyword_style = opt("keyword_style", "NONE"),
  function_style = opt("function_style", "NONE"),
  string_style = opt("string_style", "nocombine"),
  variable_style = opt("variable_style", "NONE"),
  highlights = opt("highlights", {}),
  transparent_mode = opt("transparent_mode", false),
}

return config
