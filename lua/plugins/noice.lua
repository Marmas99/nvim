return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
	},
	opts = {
      signature = {
        enabled = false,  -- Disable LSP signature help
      },
		routes = {
			{
				view = "notify",
				filter = { event = "msg_showmode" },
			},
		},
		lsp = {
			-- override markdown rendering so that **cmp** and other plugins use **Treesitter**
      signature = {
        enabled = false,  -- Disable LSP signature help
      },
			override = {
				["vim.lsp.util.convert_input_to_markdown_lines"] = true,
				["vim.lsp.util.stylize_markdown"] = true,
				["cmp.entry.get_documentation"] = true,
			},
		},
		-- you can enable a preset for easier configuration
		presets = {
			bottom_search = true,
			command_palette = true,
			long_message_to_split = true,
			inc_rename = false,
			lsp_doc_border = true,
		},
	},
}
