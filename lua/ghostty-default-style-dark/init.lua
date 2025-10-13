local config = require("ghostty-default-style-dark.config")

local M = {}

---@param opts? ghostty-default-style-dark.Config
function M.load(opts)
  opts = require("ghostty-default-style-dark.config").extend(opts)
  vim.o.background = "dark"
  return require("ghostty-default-style-dark.theme").setup(opts)
end

M.setup = config.setup

return M
