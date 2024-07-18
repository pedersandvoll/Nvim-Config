return {
    "chrisgrieser/nvim-scissors",
    dependencies = { "nvim-telescope/telescope.nvim", "garymjr/nvim-snippets" },
    opts = {
        snippetDir = "~/nvimSnippets/",
    },
    -- config = function()
    --     require("nvim-snippets").setup({
    --         search_paths = { "~/nvimSnippets/" },
    --     })
    -- end
}
