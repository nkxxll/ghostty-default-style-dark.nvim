---@class ghostty-default-style-dark.Highlight: vim.api.keyset.highlight
---@field style? vim.api.keyset.highlight

---@alias ghostty-default-style-dark.Highlights table<string,ghostty-default-style-dark.Highlight|string>

---@alias ghostty-default-style-dark.HighlightsFn fun(colors: ColorScheme, opts:ghostty-default-style-dark.Config):ghostty-default-style-dark.Highlights

---@class ghostty-default-style-dark.Cache
---@field groups ghostty-default-style-dark.Highlights
---@field inputs table
