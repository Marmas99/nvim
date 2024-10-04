--return {
--  'luisiacc/gruvbox-baby',
--  config = function ()
--    vim.g.gruvbox_baby_keyword_style = "bold"
--    vim.g.gruvbox_baby_transparent_mode = 1
--   vim.g.gruvbox_baby_telescope_theme = 1
--  end
--}
--
return {
  "tiagovla/tokyodark.nvim",
    opts = {
        -- custom options here
    },
    config = function(_, opts)
        require("tokyodark").setup(opts) -- calling setup is optional
        vim.cmd [[colorscheme tokyodark]]
    end,
}
