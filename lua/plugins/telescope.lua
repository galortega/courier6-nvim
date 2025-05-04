return {
    "nvim-telescope/telescope.nvim",
    tag = "0.1.8",
    dependencies = {
        { "nvim-lua/plenary.nvim" },
        { "BurntSushi/ripgrep" },
        { "sharkdp/fd" },
    },
    config = function()
        local builtin = require("telescope.builtin")
        local themes = require("telescope.themes")
        vim.keymap.set("n", "<C-p>", builtin.find_files, {})
        vim.keymap.set("n", "<leader>fg", builtin.live_grep, { desc = "Telescope live grep" })
        vim.keymap.set("n", "<leader>fb", builtin.buffers, { desc = "Telescope buffers" })
        vim.keymap.set("n", "<leader>fh", builtin.help_tags, { desc = "Telescope help tags" })
        vim.keymap.set("n", "<leader>fs", builtin.lsp_document_symbols, { desc = "Telescope lsp document symbols" })
        -- peek definitions, references, implementations and types:
        vim.keymap.set("n", "gpd", function()
            builtin.lsp_definitions(vim.tbl_extend("force", themes.get_cursor(), { jump_type = "never" }))
        end, { desc = "Telescope lsp definitions" })
        vim.keymap.set("n", "gpr", function()
            builtin.lsp_references(vim.tbl_extend("force", themes.get_cursor(), { jump_type = "never" }))
        end, { desc = "Telescope lsp references" })
        vim.keymap.set("n", "gpi", function()
            builtin.lsp_implementations(vim.tbl_extend("force", themes.get_cursor(), { jump_type = "never" }))
        end, { desc = "Telescope lsp implementations" })
        vim.keymap.set("n", "gpt", function()
            builtin.lsp_type_definitions(vim.tbl_extend("force", themes.get_cursor(), { jump_type = "never" }))
        end, { desc = "Telescope lsp type definitions" })
    end,
}
