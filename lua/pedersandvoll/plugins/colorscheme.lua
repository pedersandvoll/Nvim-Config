return {
    -- {
    --     "ellisonleao/gruvbox.nvim",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("gruvbox")
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "GruvboxGreenSign", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "GruvboxOrangeSign", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "GruvboxPurpleSign", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "GruvboxYellowSign", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "GruvboxRedSign", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "GruvboxBlueSign", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "GruvboxAquaSign", { bg = "none" })
    --     end,
    -- },
    {
        "projekt0n/caret.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("caret")
            -- vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
            -- vim.api.nvim_set_hl(0, "CursorLine", { bg = "#3b3b3b" })
        end,
    },
    -- {
    --     "xero/miasma.nvim",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("miasma")
    --     end,
    -- },
}
