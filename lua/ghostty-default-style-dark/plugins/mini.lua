local mini = {}

local c = require("ghostty-default-style-dark.colors").palette

function mini.highlights()
  return {
    MiniIndentscopeSymbol = { fg = c.frost.artic_ocean },
    MiniIndentscopePrefix = { nocombine = true },
  }
end

return mini
