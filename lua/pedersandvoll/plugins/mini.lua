return {
    {
        "echasnovski/mini.nvim",
        config = function()
            require("mini.cursorword").setup()
            require("mini.move").setup()
            require("mini.diff").setup()
            require("mini.visits").setup()
        end,
    },
}
