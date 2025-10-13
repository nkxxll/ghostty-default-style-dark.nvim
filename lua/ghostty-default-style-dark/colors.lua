local Util = require("ghostty-default-style-dark.util")

local M = {}

---@param opts? ghostty-default-style-dark.Config
function M.setup(opts)
  opts = require("ghostty-default-style-dark.config").extend(opts)

  Util.day_brightness = opts.day_brightness

  ---@type Palette
  local palette = {
    -- Mapped from ghostty-default-style-dark
    bg = "#282c34",
    fg = "#ffffff",
    red = "#cc6566",
    green = "#b6bd68",
    yellow = "#f0c674",
    blue = "#82a2be",
    magenta = "#b294bb",
    cyan = "#8abeb7",
    fg_dark = "#c4c8c6",

    bg_dark = "#1d1f21",
    bg_dark1 = "#1d1f21",

    bg_highlight = "#353a44",
    blue0 = "#7aa6da", -- bright blue
    blue1 = "#70c0b1", -- bright cyan
    blue2 = "#82a2be", -- blue
    blue5 = "#8abeb7", -- cyan
    blue6 = "#70c0b1", -- bright cyan again
    blue7 = Util.blend("#82a2be", 0.5, "#282c34"),
    comment = "#666666", -- bright black from ghostty
    dark3 = "#666666", -- bright black
    dark5 = "#c4c8c6", -- white
    fg_gutter = "#666666", -- bright black
    green1 = "#b9ca4b", -- bright green
    green2 = "#b6bd68", -- green
    magenta2 = "#c397d8", -- bright magenta
    orange = "#f0c674", -- yellow, tokyonight uses orange for some yellows
    purple = "#b294bb", -- magenta
    red1 = "#d54e53", -- bright red
    teal = "#8abeb7", -- cyan
    terminal_black = "#1d1f21",

    git = {
      add = "#b9ca4b", -- bright green
      change = "#7aa6da", -- bright blue
      delete = "#d54e53", -- bright red
    },
  }

  -- Color Palette
  ---@class ColorScheme: Palette
  local colors = palette

  Util.bg = colors.bg
  Util.fg = colors.fg

  colors.none = "NONE"

  colors.diff = {
    add = Util.blend_bg(colors.green, 0.15),
    delete = Util.blend_bg(colors.red, 0.15),
    change = Util.blend_bg(colors.blue, 0.15),
    text = colors.blue,
  }

  colors.git.ignore = colors.dark3
  colors.black = Util.blend_bg(colors.bg, 0.8, "#000000")
  colors.border_highlight = Util.blend_bg(colors.blue, 0.8)
  colors.border = colors.black

  -- Popups and statusline always get a dark background
  colors.bg_popup = colors.bg_dark
  colors.bg_statusline = colors.bg_dark

  -- Sidebar and Floats are configurable
  colors.bg_sidebar = opts.styles.sidebars == "transparent" and colors.none
    or opts.styles.sidebars == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_float = opts.styles.floats == "transparent" and colors.none
    or opts.styles.floats == "dark" and colors.bg_dark
    or colors.bg

  colors.bg_visual = Util.blend_bg(colors.blue, 0.15) -- from ghostty selection-background
  colors.bg_search = colors.blue0
  colors.fg_sidebar = colors.fg_dark
  colors.fg_float = colors.fg

  colors.error = colors.red1
  colors.todo = colors.blue
  colors.warning = colors.yellow
  colors.info = colors.blue
  colors.hint = colors.teal

  colors.rainbow = {
    colors.blue,
    colors.yellow,
    colors.green,
    colors.teal,
    colors.magenta,
    colors.purple,
    colors.orange,
    colors.red,
  }

  -- stylua: ignore
  --- @class TerminalColors
  colors.terminal = {
    black          = colors.terminal_black,
    black_bright   = "#666666",
    red            = colors.red,
    red_bright     = "#d54e53",
    green          = colors.green,
    green_bright   = "#b9ca4b",
    yellow         = colors.yellow,
    yellow_bright  = "#e7c547",
    blue           = colors.blue,
    blue_bright    = "#7aa6da",
    magenta        = colors.magenta,
    magenta_bright = "#c397d8",
    cyan           = colors.cyan,
    cyan_bright    = "#70c0b1",
    white          = colors.fg_dark,
    white_bright   = "#eaeaea",
  }

  opts.on_colors(colors)

  return colors, opts
end

return M
