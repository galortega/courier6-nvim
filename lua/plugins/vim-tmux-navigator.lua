return {
  "christoomey/vim-tmux-navigator",
  after = "CopilotC-Nvim/CopilotChat.nvim",
  vim.keymap.set("n", "<C-h>", "<Plug>TmuxNavigateLeft<CR>"),
  vim.keymap.set("n", "<C-j>", "<Plug>TmuxNavigateDown<CR>"),
  vim.keymap.set("n", "<C-k>", "<Plug>TmuxNavigateUp<CR>"),
  vim.keymap.set("n", "<C-l>", "<Plug>TmuxNavigateRight<CR>")
}
