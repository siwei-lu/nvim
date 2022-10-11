local neogit = require("neogit")
local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

function _NEOGIT_OPEN()
	neogit.open()
end

keymap("n", "<C-g>", "<cmd>lua _NEOGIT_OPEN()<CR>", opts)
