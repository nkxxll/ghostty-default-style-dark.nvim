local colors = {}

---@class GhosttyDefaultStyleDark.Palette.PolarNight
---@field origin string ghostty-default-style-dark 0
---@field bright string ghostty-default-style-dark 1
---@field brighter string ghostty-default-style-dark 2
---@field brightest string  ghostty-default-style-dark 3
---@field light string out of palette

---@class GhosttyDefaultStyleDark.Palette.SnowStorm
---@field origin string  ghostty-default-style-dark 4
---@field brighter string ghostty-default-style-dark 5
---@field brightest string  ghostty-default-style-dark 6

---@class GhosttyDefaultStyleDark.Palette.Frost
---@field polar_water string ghostty-default-style-dark 7
---@field ice string ghostty-default-style-dark 8
---@field artic_water string ghostty-default-style-dark 9
---@field artic_ocean string ghostty-default-style-dark 10

---@class GhosttyDefaultStyleDark.Palette.Aurora
---@field red string ghostty-default-style-dark 11
---@field orange string ghostty-default-style-dark 12
---@field yellow string ghostty-default-style-dark 13
---@field green string ghostty-default-style-dark 14
---@field purple string ghostty-default-style-dark 15

---@class GhosttyDefaultStyleDark.Palette
---@field polar_night GhosttyDefaultStyleDark.Palette.PolarNight
---@field snow_storm GhosttyDefaultStyleDark.Palette.SnowStorm
---@field frost GhosttyDefaultStyleDark.Palette.Frost
---@field aurora GhosttyDefaultStyleDark.Palette.Aurora
---@field none string

---@type GhosttyDefaultStyleDark.Palette
local defaults = {
  polar_night = {
    origin = "#282c34", -- bg
    bright = "#1d1f21", -- p0
    brighter = "#555555", -- p8 (darker)
    brightest = "#666666", -- p8
    light = "#c4c8c6", -- p7
  },
  snow_storm = {
    origin = "#c4c8c6", -- p7
    brighter = "#eaeaea", -- p15
    brightest = "#ffffff", -- fg
  },
  frost = {
    polar_water = "#8abeb7", -- p6
    ice = "#7aa6da", -- p12
    artic_water = "#82a2be", -- p4
    artic_ocean = "#82a2be", -- p4
  },
  aurora = {
    red = "#d54e53", -- p9
    orange = "#cc6566", -- p1
    yellow = "#e7c547", -- p11
    green = "#b9ca4b", -- p10
    purple = "#c397d8", -- p13
  },
  none = "NONE",
}

colors.palette = defaults
colors.default_bg = "#282c34" -- bg

function colors.daltonize(severity)
  local daltonize = require("ghostty-default-style-dark.utils.colorblind").daltonize

  for group, color in pairs(defaults) do
    if type(color) == "table" then
      for sub_group, sub_color in pairs(color) do
        colors.palette[group][sub_group] = daltonize(sub_color, severity)
      end
    end
  end
end

return colors
