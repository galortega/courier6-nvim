return {
	{
    "tpope/vim-fugitive",
    config = function ()
      vim.keymap.set("n", "<leader>gs", ":Git<CR>", {})
      vim.keymap.set("n", "<leader>gd", ":Gdiff<CR>", {})
      vim.keymap.set("n", "<leader>gc", ":Gcommit<CR>", {})
      vim.keymap.set("n", "<leader>gP", ":Gpush<CR>", {})
      vim.keymap.set("n", "<leader>gl", ":Gpull<CR>", {})
      vim.keymap.set("n", "<leader>gb", ":Gblame<CR>", {})
    end
  },
	{
		"lewis6991/gitsigns.nvim",
		config = function()
			require("gitsigns").setup()

			vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
			vim.keymap.set("n", "<leader>gt", ":Gitsigns toggle_current_line_blame<CR>", {})
		end,
	},
}
