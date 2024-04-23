return {
    {
        "projekt0n/caret.nvim",
        priority = 1000,
        -- config = function()
        --     vim.cmd.colorscheme("caret")
        -- end,
    },
    {
        "ellisonleao/gruvbox.nvim",
        priority = 1000,
        config = function()
            vim.cmd.colorscheme("gruvbox")
            vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
            vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        end,
    },
    {
        "ribru17/bamboo.nvim",
        priority = 1000,
        -- config = function()
        --     vim.cmd.colorscheme("bamboo")
        -- end,
    },
    {
        "xero/miasma.nvim",
        priority = 1000,
        -- config = function()
        --     vim.cmd.colorscheme("miasma")
        -- end,
    },
}
