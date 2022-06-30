require('packer').startup(function()
  use 'wbthomason/packer.nvim'

  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
        local startify = require("alpha.themes.startify")
        startify.section.bottom_buttons.val = {
          startify.button("f", "find file", ":Telescope find_files <cr>"),
	  startify.button("q", "quit neovim", ":qa <cr>"),
	  startify.button("p", "sync packages", ":PackerSync <cr>"),
        }
	opts = {
		margin = 20
	}
    end
  }
  
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} },
  require('telescope').setup{
	defaults = {
		file_ignore_patterns = {
		".git"
		}
	},
	pickers = {
		find_files = {hidden = true}
	},
	file_ignore_patterns = {".git/"}
  }
  }
 
  use {
    'nvim-treesitter/nvim-treesitter',
     run = ':TSUpdate'
  }	

  use 'neovim/nvim-lspconfig'
  use 'williamboman/nvim-lsp-installer'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'hrsh7th/cmp-buffer'
  use 'hrsh7th/cmp-path'
  use 'hrsh7th/cmp-cmdline'
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-vsnip'
  use 'hrsh7th/vim-vsnip'
  use {
  'romgrk/barbar.nvim',
  requires = {'kyazdani42/nvim-web-devicons'}
  }

use 'folke/tokyonight.nvim' 

use {
	"windwp/nvim-autopairs",
    config = function() require("nvim-autopairs").setup {
	      fast_wrap = {
	      map = '<M-e>',
	      chars = { '{', '[', '(', '"', "'" },
	      pattern = [=[[%'%"%)%>%]%)%}%,]]=],
	      end_key = '$',
	      keys = 'qwertyuiopzxcvbnmasdfghjkl',
	      check_comma = true,
	      highlight = 'Search',
	      highlight_grey='Comment'
    },
    } end
    
}
end)

