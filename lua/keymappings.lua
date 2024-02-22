local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }


-- Quit
keymap("n", "qq", ":q<CR>", default_opts)


-- Open Terminal
keymap("n", "tt", ":terminal<CR>", default_opts)


