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
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            -- Setup gruvbox with hard contrast and custom overrides
            require("gruvbox").setup({
                contrast = "hard",
                overrides = {
                    ["@punctuation.bracket"] = { fg = "#fe8019" },
                    ["@punctuation.delimiter"] = { fg = "#fe8019" },
                    ["@punctuation.special"] = { fg = "#fe8019" },
                    ["Operator"] = { fg = "#fe8019" },
                },
            })

            -- Apply the gruvbox colorscheme
            vim.cmd.colorscheme("gruvbox")

            -- Manually set background colors to none for Normal, NormalFloat, SignColumn, and sign-related highlights
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
            vim.api.nvim_set_hl(0, "GruvboxGreenSign", { bg = "none" })
            vim.api.nvim_set_hl(0, "GruvboxOrangeSign", { bg = "none" })
            vim.api.nvim_set_hl(0, "GruvboxPurpleSign", { bg = "none" })
            vim.api.nvim_set_hl(0, "GruvboxYellowSign", { bg = "none" })
            vim.api.nvim_set_hl(0, "GruvboxRedSign", { bg = "none" })
            vim.api.nvim_set_hl(0, "GruvboxBlueSign", { bg = "none" })
            vim.api.nvim_set_hl(0, "GruvboxAquaSign", { bg = "none" })
        end,
    }
    -- {
    --     "sainnhe/everforest",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("everforest")
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "#282828" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#282828" })
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
}
