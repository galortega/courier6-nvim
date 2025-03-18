return {
    "akinsho/bufferline.nvim",
    version = "*",
    dependencies = { "nvim-tree/nvim-web-devicons" }, -- ensure catppuccin is available
    config = function()
        require("bufferline").setup({
            options = {
                mode = "buffers",
                offsets = {
                    {
                        filetype = "neo-tree",
                        text = "File Explorer",
                        highlight = "Directory",
                        separator = true,
                    },
                },
            },
        })
        vim.keymap.set("n", "<leader>bl", ":BufferLinePick<cr>")
        vim.keymap.set("n", "<leader>bn", ":BufferLineCycleNext<CR>")
        vim.keymap.set("n", "<leader>bp", ":BufferLineCyclePrev<CR>")
        vim.keymap.set("n", "<leader>bo", ":BufferLineCloseOthers<CR>")
        vim.keymap.set("n", "<leader>bc", ":bdelete<CR>:bnext<CR>")
        vim.keymap.set("n", "<leader>1", ":BufferLineGoToBuffer 1<CR>")
        vim.keymap.set("n", "<leader>2", ":BufferLineGoToBuffer 2<CR>")
        vim.keymap.set("n", "<leader>3", ":BufferLineGoToBuffer 3<CR>")
        vim.keymap.set("n", "<leader>4", ":BufferLineGoToBuffer 4<CR>")
        vim.keymap.set("n", "<leader>5", ":BufferLineGoToBuffer 5<CR>")
        vim.keymap.set("n", "<leader>6", ":BufferLineGoToBuffer 6<CR>")
        vim.keymap.set("n", "<leader>7", ":BufferLineGoToBuffer 7<CR>")
        vim.keymap.set("n", "<leader>8", ":BufferLineGoToBuffer 8<CR>")
        vim.keymap.set("n", "<leader>9", ":BufferLineGoToBuffer 9<CR>")
    end,
}
