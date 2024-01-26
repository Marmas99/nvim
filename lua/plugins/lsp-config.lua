-- Setup language servers.
return {
	"neovim/nvim-lspconfig",
	config = function()
		local lspconfig = require('lspconfig')
		-- Setup the GO LSP
		require'lspconfig'.gopls.setup{
			cmd= { "gopls" },
			filetypes= { "go", "gomod", "gowork", "gotmpl" },
			root_dir= lspconfig.util.root_pattern("go.work", "go.mod", ".git"),
			single_file_support= true,
		}
		
	end,
}
