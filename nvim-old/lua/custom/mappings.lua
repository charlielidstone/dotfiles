---@type MappingsTable
local M = {}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
  },
}

-- add ability to use caps lock instead of esc to exit insert mode:
M.insert = {
  i = {
    ["jk"] = "<ESC>",
    ["<C-s>"] = "<cmd> w <cr>",
  },
}


-- more keybinds!

return M
