return {
    'dmmulroy/tsc.nvim',
    config = function()
        local opts = {}

        require('tsc').setup(opts)
    end,
}
