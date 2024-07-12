return {
    {
        "echasnovski/mini.nvim",
        config = function()
            require("mini.indentscope").setup()
            require("mini.cursorword").setup()
            require("mini.notify").setup()
            require("mini.move").setup()
            require("mini.diff").setup()
        end,
    },
}
