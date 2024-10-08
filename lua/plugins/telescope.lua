return {
	'nvim-telescope/telescope.nvim',
	branch = '0.1.x',
	dependencies = {
		"nvim-lua/plenary.nvim",
		 { "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
    "nvim-tree/nvim-web-devicons",
	},
	config = function()
		local telescope = require("telescope")
		local actions = require("telescope.actions")


    telescope.setup({
      defaults = {
        file_ignore_patterns = { "node_modules" },
        path_display = { "truncate " },
        mappings = {
          i = {
            ["<C-k>"] = actions.move_selection_previous, -- move to prev result
            ["<C-j>"] = actions.move_selection_next, -- move to next result
            ["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
          },
        },
      },
    })

		-- set keymaps
    local keymap = vim.keymap -- for conciseness

    keymap.set("n", "ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    keymap.set("n", "fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    keymap.set("n", "fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })
    keymap.set("n", "fb", "<cmd>Telescope buffers<cr>", { desc = "Find open buffers" })
    keymap.set("n", "fr", "<cmd>Telescope lsp_references<cr>", { desc = "Find code references" })

	end
}
