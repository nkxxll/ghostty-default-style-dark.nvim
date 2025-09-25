local config = require("ghostty-default-style-dark.config")
local utils = require("ghostty-default-style-dark.utils")

local ghostty_default_style_dark = {}

function ghostty_default_style_dark.load(opts)
  if opts then
    require("ghostty-default-style-dark.config").extend(opts)
  end

  vim.o.termguicolors = true

  if config.options.colorblind.enable then
    require("ghostty-default-style-dark.colors").daltonize(config.options.colorblind.severity)
  end

  require("ghostty-default-style-dark.config").options.on_colors(require("ghostty-default-style-dark.colors").palette)

  vim.cmd([[ highlight clear ]])

  if config.options.terminal_colors then
    require("ghostty-default-style-dark.terminal").apply()
  end

  utils.load(
    require("ghostty-default-style-dark.defaults").highlights(),
    require("ghostty-default-style-dark.lsp").highlights(),
    require("ghostty-default-style-dark.syntax").highlights(),
    require("ghostty-default-style-dark.terminal").highlights(),
    require("ghostty-default-style-dark.treesitter").highlights(),
    require("ghostty-default-style-dark.plugins.bufferline").highlights(),
    require("ghostty-default-style-dark.plugins.completion").highlights(),
    require("ghostty-default-style-dark.plugins.filetree").highlights(),
    require("ghostty-default-style-dark.plugins.git").highlights(),
    require("ghostty-default-style-dark.plugins.motion").highlights(),
    require("ghostty-default-style-dark.plugins.notify").highlights(),
    require("ghostty-default-style-dark.plugins.picker").highlights(),
    require("ghostty-default-style-dark.plugins.ui").highlights(),
    require("ghostty-default-style-dark.plugins.diffview").highlights(),
    require("ghostty-default-style-dark.plugins.neogit").highlights(),
    require("ghostty-default-style-dark.plugins.glance").highlights(),
    require("ghostty-default-style-dark.plugins.mini").highlights(),
    require("ghostty-default-style-dark.plugins.markview").highlights(),
    require("ghostty-default-style-dark.plugins.snacks").highlights(),
    require("ghostty-default-style-dark.plugins.dap").highlights(),
    require("ghostty-default-style-dark.plugins.vimwiki").highlights()
  )

  vim.g.colors_name = "ghostty-default-style-dark"
end

ghostty_default_style_dark.setup = config.setup

return ghostty_default_style_dark