local Util = require("ghostty-default-style-dark.util")

local M = {}

M.url = "https://github.com/phaazon/hop.nvim"

---@type ghostty-default-style-dark.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    HopNextKey = { fg = c.magenta2, bold = true },
    HopNextKey1 = { fg = c.blue2, bold = true },
    HopNextKey2 = { fg = Util.blend_bg(c.blue2, 0.6) },
    HopUnmatched = { fg = c.dark3 },
  }
end

return M
