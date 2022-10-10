local opts = { noremap = true, silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<C-g>", "<cmd>lua _LAZYGIT_TOGGLE()<CR>", opts)
