-- Set line numbers
vim.opt.number = true


-- Set tabs to 2 spaces
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true
vim.bo.softtabstop = 2



-- Set colorscheme
vim.cmd[[colorscheme everforest]]
vim.cmd[[set background=dark]]


-- Activate git lens 
vim.cmd[[Gitsigns toggle_current_line_blame]]


-- Signcolumn yes to stop flickering/shaky text
vim.opt.signcolumn = 'yes'


-- Clipboard on yank
vim.opt.clipboard = 'unnamedplus'
