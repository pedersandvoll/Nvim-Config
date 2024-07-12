return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("gruvbox")
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
    },
    -- {
    --     "rose-pine/neovim",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("rose-pine-moon")
    --     end,
    -- },
    -- {
    --     "lvim-tech/lvim-colorscheme",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("lvim")
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
    --     end,
    -- },
    -- {
    --     "sho-87/kanagawa-paper.nvim",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("kanagawa-paper")
    --     end,
    -- },
    -- {
    --     "blazkowolf/gruber-darker.nvim",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("gruber-darker")
    --     end,
    -- },

}
