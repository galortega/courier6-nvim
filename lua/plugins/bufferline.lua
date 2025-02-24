return {
	"akinsho/bufferline.nvim",
  version = "*",
	dependencies = { "nvim-tree/nvim-web-devicons" }, -- ensure catppuccin is available
	config = function()
		require("bufferline").setup()
	end,
}
