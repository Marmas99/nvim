return {
	'hrsh7th/cmp-nvim-lsp',
	'hrsh7th/cmp-buffer',
	'hrsh7th/cmp-path',
	'hrsh7th/cmp-cmdline',
	'hrsh7th/nvim-cmp',
	config = function()
		local cmp = require'cmp'
			cmp.setup({
				snippet = {
				-- REQUIRED - you must specify a snippet engine
				expand = function(args)
				-- vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
				-- require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
				require('snippy').expand_snippet(args.body) -- For `snippy` users.
				-- vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
				end,


				sources = cmp.config.sources({
				      { name = 'nvim_lsp' },
				      -- { name = 'vsnip' }, -- For vsnip users.
				      -- { name = 'luasnip' }, -- For luasnip users.
				      -- { name = 'ultisnips' }, -- For ultisnips users.
				       { name = 'snippy' }, -- For snippy users.
				    }, {
				      { name = 'buffer' },
				})
			},	
		})
	end,
	dependencies = {
		'dcampos/nvim-snippy',
		'dcampos/cmp-snippy',	
	},
}
