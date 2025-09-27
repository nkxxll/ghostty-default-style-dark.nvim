local colors = require("ghostty-default-style-dark.colors").setup()

local ghostty-default-style-dark = {}

ghostty-default-style-dark.normal = {
  left = { { colors.black, colors.blue }, { colors.blue, colors.fg_gutter } },
  middle = { { colors.fg, colors.bg_statusline } },
  right = { { colors.black, colors.blue }, { colors.blue, colors.fg_gutter } },
  error = { { colors.black, colors.error } },
  warning = { { colors.black, colors.warning } },
}

ghostty-default-style-dark.insert = {
  left = { { colors.black, colors.green }, { colors.blue, colors.bg } },
}

ghostty-default-style-dark.visual = {
  left = { { colors.black, colors.magenta }, { colors.blue, colors.bg } },
}

ghostty-default-style-dark.replace = {
  left = { { colors.black, colors.red }, { colors.blue, colors.bg } },
}

ghostty-default-style-dark.inactive = {
  left = { { colors.blue, colors.bg_statusline }, { colors.dark3, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.dark3, colors.bg } },
}

ghostty-default-style-dark.tabline = {
  left = { { colors.dark3, colors.bg_highlight }, { colors.dark3, colors.bg } },
  middle = { { colors.fg_gutter, colors.bg_statusline } },
  right = { { colors.fg_gutter, colors.bg_statusline }, { colors.dark3, colors.bg } },
  tabsel = { { colors.blue, colors.fg_gutter }, { colors.dark3, colors.bg } },
}

return ghostty-default-style-dark
