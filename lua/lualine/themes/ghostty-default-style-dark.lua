local c = require("ghostty-default-style-dark.colors").palette
local utils = require("ghostty-default-style-dark.utils")
local config = require("ghostty-default-style-dark.config").options.styles

local ghostty_default_style_dark = {}

ghostty_default_style_dark.normal = {
  a = { fg = c.polar_night.bright, bg = c.frost.ice },
  b = { fg = c.snow_storm.brighter, bg = c.polar_night.bright },
  c = { fg = c.snow_storm.brighter, bg = c.polar_night.brighter },
}

ghostty_default_style_dark.insert = {
  a = { fg = c.polar_night.bright, bg = c.snow_storm.origin },
}

ghostty_default_style_dark.visual = {
  a = { fg = c.polar_night.bright, bg = c.frost.polar_water },
}

ghostty_default_style_dark.replace = {
  a = { fg = c.polar_night.bright, bg = c.aurora.yellow },
}

ghostty_default_style_dark.command = {
  a = { fg = c.polar_night.bright, bg = c.aurora.purple },
}

ghostty_default_style_dark.inactive = {
  a = { fg = c.snow_storm.origin, bg = utils.make_global_bg() },
  b = { fg = c.snow_storm.origin, bg = utils.make_global_bg() },
  c = { fg = c.snow_storm.origin, bg = c.polar_night.bright },
}

if config.lualine_bold then
  for _, mode in pairs(ghostty_default_style_dark) do
    mode.a.gui = "bold"
  end
end

return ghostty_default_style_dark