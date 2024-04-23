return {
    {
        "echasnovski/mini.nvim",
        config = function()
            require("mini.indentscope").setup()
            require("mini.completion").setup()
            require("mini.cursorword").setup()
            require("mini.files").setup()
            require("mini.move").setup()
        end,
    },
}
