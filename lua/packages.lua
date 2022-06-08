require('packer').startup(function()
  use 'wbthomason/packer.nvim'
  use {
    'goolord/alpha-nvim',
    config = function ()
        require'alpha'.setup(require'alpha.themes.dashboard'.config)
    end
  }
end)

