return {
 "folke/trouble.nvim",
 dependencies = { "nvim-tree/nvim-web-devicons" },
 config =function ()
  local opts = {

  }

  local keymap = vim.keymap


  keymap.set("n", "fe", "<cmd>Trouble workspace_diagnostics<cr>", { desc = "Find errors" })
  keymap.set("n", "tq", "<cmd>TroubleClose<cr>", { desc = "Quit trouble" })
 end,
}
