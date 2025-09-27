local M = {}

M.url = "https://github.com/nvimdev/indentmini.nvim"

---@type ghostty-default-style-dark.HighlightsFn
function M.get(c, opts)
  -- stylua: ignore
  return {
    IndentLine                 = { fg = c.fg_gutter, nocombine = true },
    IndentLineCurrent          = { fg = c.blue1, nocombine = true },
  }
end

return M
