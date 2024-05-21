return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("gruvbox")
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    },
    -- {
    --     "ribru17/bamboo.nvim",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("bamboo")
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "#282828" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#282828" })
    --     end,
    -- },
    -- {
    --     "sainnhe/everforest",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("everforest")
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "#282828" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#282828" })
    --     end,
    -- },
}
