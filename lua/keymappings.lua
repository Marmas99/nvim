local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }


-- Quit
keymap("n", "Q", ":q<CR>", default_opts)

-- Telescopte
keymap("n", "F", ":Telescope find_files<CR>", default_opts)

