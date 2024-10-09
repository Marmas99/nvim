return {
    'nvimdev/lspsaga.nvim',
    config = function()
      local keymap = vim.api.nvim_set_keymap
      local default_opts = { noremap = true, silent = true }

      -- Hover keyword
      keymap("n", "K", ":Lspsaga hover_doc<CR>", default_opts)

      -- Rename variable
      keymap("n", "rn", ":Lspsaga rename<CR>", default_opts)


        require('lspsaga').setup({})
    end,
    dependencies = {
        'nvim-treesitter/nvim-treesitter', -- optional
        'nvim-tree/nvim-web-devicons',     -- optional
    }
}
