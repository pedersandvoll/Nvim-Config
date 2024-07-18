return {
    "garymjr/nvim-snippets",
    keys = {
        {
            "<Tab>",
            function()
                if vim.snippet.active({ direction = 1 }) then
                    vim.schedule(function()
                        vim.snippet.jump(1)
                    end)
                    return
                end
                return "<Tab>"
            end,
            expr = true,
            silent = true,
            mode = "i",
        },
        {
            "<Tab>",
            function()
                vim.schedule(function()
                    vim.snippet.jump(1)
                end)
            end,
            expr = true,
            silent = true,
            mode = "s",
        },
        {
            "<S-Tab>",
            function()
                if vim.snippet.active({ direction = -1 }) then
                    vim.schedule(function()
                        vim.snippet.jump(-1)
                    end)
                    return
                end
                return "<S-Tab>"
            end,
            expr = true,
            silent = true,
            mode = { "i", "s" },
        },
    },
    config = function()
        local ok, nvim_snippets = pcall(require, "nvim-snippets")
        if not ok then
            vim.notify("Failed to load nvim-snippets")
            return
        end

        nvim_snippets.setup({
            search_paths = { "~/nvimSnippets/" },
        })
    end
}
