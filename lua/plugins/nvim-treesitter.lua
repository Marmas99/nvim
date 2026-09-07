return {
	"nvim-treesitter/nvim-treesitter",
	branch = "main",
	build = ":TSUpdate",
	config = function()
		local ensure_installed = { "go", "lua", "json" }

		require("nvim-treesitter").setup()
		require("nvim-treesitter").install(ensure_installed)

		-- Enable highlighting (and indenting) for the ensured parsers,
		-- replacing the old `highlight.enable` / `indent.enable` options.
		vim.api.nvim_create_autocmd("FileType", {
			pattern = ensure_installed,
			callback = function()
				vim.treesitter.start()
				vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
			end,
		})
	end,
}
