local status_ok, diffview = pcall(require, "diffview")
if not status_ok then
  return
end

local actions = require("diffview.actions")

local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap
keymap("n", "<C-g>", "<cmd>DiffviewOpen<CR>", opts)

diffview.setup {
  file_panel = {
    listing_style = "list", -- One of 'list' or 'tree'
    win_config = { -- See ':h diffview-config-win_config'
      width = 30,
    },
  },
}
