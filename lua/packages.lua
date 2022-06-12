require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'goolord/alpha-nvim',
    requires = { 'kyazdani42/nvim-web-devicons' },
    config = function ()
        require'alpha'.setup(require'alpha.themes.startify'.config)
        local startify = require("alpha.themes.startify")
        startify.section.bottom_buttons.val = {
          startify.button("e", "new file", ":ene <bar> startinsert <cr>"),
          startify.button("f", "find file", ":Telescope find_files <cr>"),
	  startify.button("q", "quit neovim", ":qa <cr>")
        }
    end
}
  use {
  'nvim-telescope/telescope.nvim',
  requires = { {'nvim-lua/plenary.nvim'} }
  }
end)

