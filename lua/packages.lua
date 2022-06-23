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
    end
  }
  
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} },
  require('telescope').setup{
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
  use "EdenEast/nightfox.nvim" 
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

  use {"akinsho/toggleterm.nvim", tag = 'v1.*', config = function()
	  require("toggleterm").setup{
	    direction = 'float',
	    close_on_exit = true,
	  }
	  end
  }
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', -- optional, for file icon
    },
    tag = 'nightly', -- optional, updated every week. (see issue #1193)
    config = function()
	    require'nvim-tree'.setup{}
    end,
}
end)

