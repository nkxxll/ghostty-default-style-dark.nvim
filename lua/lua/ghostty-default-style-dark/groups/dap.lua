local Util = require("ghostty-default-style-dark.util")

local M = {}

M.url = "https://github.com/mfussenegger/nvim-dap"

---@type ghostty-default-style-dark.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    DapStoppedLine = { bg = Util.blend_bg(c.warning, 0.1) }, -- Used for "Warning" diagnostic virtual text
  }
end

return M
