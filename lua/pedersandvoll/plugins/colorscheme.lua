return {
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            -- vim.cmd.colorscheme("gruvbox")
            vim.api.nvim_set_hl(0, "Normal", { bg = "#222222" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "#222222" })
            vim.api.nvim_set_hl(0, "SignColumn", { bg = "#222222" })
        end,
    },
    {
        "blazkowolf/gruber-darker.nvim",
        priority = 1000,
        -- config = function()
        --     vim.cmd.colorscheme("gruber-darker")
        -- end
    },
    {
        "dasupradyumna/midnight.nvim",
        priority = 1000,
        -- config = function()
        --     vim.cmd.colorscheme("midnight")
        -- end,
    },
    {
        "zaldih/themery.nvim",
        config = function()
            require("themery").setup({
                themes = { "gruvbox", "gruber-darker" },
                livePreview = true,
            })
        end
    },
}
