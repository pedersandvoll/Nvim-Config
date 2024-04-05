return {
    -- {
    --     "rose-pine/neovim",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("rose-pine")
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --     end
    -- },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("gruvbox")
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end
    },
    -- {
    --     "folke/tokyonight.nvim",
    --     priority = 1000,
    --     config = function()
    --         return {
    --             style = "moon",
    --         }
    --     end,
    -- }
}
