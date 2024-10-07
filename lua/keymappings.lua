local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }


-- Quit
keymap("n", "qq", ":q<CR>", default_opts)


-- Open Terminal
keymap("n", "tt", ":Lspsaga term_toggle<CR>", default_opts)


keymap("n", "<C-J>", "<C-W><C-J>", default_opts)
keymap("n", "<C-H>", "<C-W><C-H>", default_opts)
keymap("n", "<C-K>", "<C-W><C-K>", default_opts)
keymap("n", "<C-L>", "<C-W><C-L>", default_opts)
