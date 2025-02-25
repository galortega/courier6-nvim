return {
	"echasnovski/mini.nvim",
	version = false, -- Use the latest version (check the repo for specific tags/versions)
	config = function()
		-- Surround
		require("mini.surround").setup({
			mappings = {
				add = "sa",
				delete = "sd",
				find = "sf",
				find_left = "sF",
				highlight = "sh",
				replace = "sr",
				update_n_lines = "sn",
			},
		})

		-- Cursorword
		require("mini.cursorword").setup({})

		-- Move
		require("mini.move").setup({})

		-- Pairs
		require("mini.pairs").setup({})

		-- Indentscope
		require("mini.indentscope").setup({
			options = {
				try_as_border = true,
			},
		})

		-- Animate
		require("mini.animate").setup({
			cursor = {
				enabled = true,
				priority = 1000,
				duration = 200,
				easing = "in_out_sine",
			},
			scroll = {
				enabled = true,
				priority = 1000,
				duration = 200,
				easing = "in_out_sine",
			},
		})

		-- Jump2d
		require("mini.jump2d").setup({
      mappings = {
        start_jumping = "<leader><leader>",
      }
    })

		-- Bracketed
		require("mini.bracketed").setup({})
	end,
}
