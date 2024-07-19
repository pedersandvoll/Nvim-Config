return {
    {
        "sainnhe/gruvbox-material",
        priority = 1000,
        config = function()
            vim.o.background = "dark" -- or "light" for light mode
            vim.cmd("let g:gruvbox_material_background= 'hard'")
            vim.cmd("let g:gruvbox_material_transparent_background=2")
            vim.cmd("let g:gruvbox_material_diagnostic_line_highlight=1")
            vim.cmd("let g:gruvbox_material_diagnostic_virtual_text='colored'")
            vim.cmd("let g:gruvbox_material_enable_bold=1")
            vim.cmd("let g:gruvbox_material_enable_italic=1")
            vim.cmd.colorscheme("gruvbox-material")
            vim.api.nvim_set_hl(0, "FloatBorder", { link = "Normal" })
            vim.api.nvim_set_hl(0, "LspInfoBorder", { link = "Normal" })
            vim.api.nvim_set_hl(0, "NormalFloat", { link = "Normal" })
        end,
    },
    -- {
    --     "water-sucks/darkrose.nvim",
    --     priority = 1000,
    --     config = function()
    --         vim.cmd.colorscheme("darkrose")
    --         vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
    --         vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
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
