return {
    {
        "nvim-neotest/neotest",
        dependencies = {
            "nvim-neotest/nvim-nio",
            "nvim-lua/plenary.nvim",
            "antoinemadec/FixCursorHold.nvim",
            "nvim-treesitter/nvim-treesitter",
            "Issafalcon/neotest-dotnet",
        },
        config = function()
            require("neotest").setup({
                adapters = {
                    require("neotest-dotnet")
                }
            })

            vim.keymap.set('n', '<Leader>mr', ':lua require("neotest").run.run()<CR>', { desc = 'Test: Start' })
            vim.keymap.set('n', '<Leader>ms', ':lua require("neotest").run.stop()<CR>', { desc = 'Test: Stop' })
            vim.keymap.set('n', '<Leader>mo', ':lua require("neotest").output.open()<CR>', { desc = 'Test: Open output' })
            vim.keymap.set('n', '<Leader>mO', ':lua require("neotest").output.open({ enter = true })<CR>',
                { desc = 'Test: Open output' })
            vim.keymap.set('n', '<Leader>mi', ':lua require("neotest").summary.toggle()<CR>',
                { desc = 'Test: Open summary' })
        end,
    }
}
