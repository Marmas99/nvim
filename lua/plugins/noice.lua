return {
	"folke/noice.nvim",
	event = "VeryLazy",
	dependencies = {
		"MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
	},

  config = function ()
    require("noice").setup({
      views = {
        cmdline_popup = {
          position = {
            row = 20,
            col = "50%",
          },
        },
        popupmenu = {
          relative = "editor",
          position = {
              row = 23,
              col = "50%",
          },
          border = {
            style = "rounded",
            padding = { 0, 1 },
          },
          size = {
            width = 60,
            height = 10,
          },
          win_options = {
            winhighlight = { Normal = "Normal", FloatBorder = "DiagnosticInfo" },
          },
        },
      },
      lsp = {
        signature = {
          enabled = false,
        }
      },
      cmdline = {
        enabled = true,
        format = {
          cmdline = { pattern = "^:", icon = "❯", lang = "vim" },
        },
      },
    })
  end,
}
