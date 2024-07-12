require("pedersandvoll.core.options")
require("pedersandvoll.core.keymaps")

local autocmd = vim.api.nvim_create_autocmd
local augroup = vim.api.nvim_create_augroup
local yank_group = augroup("HighlightYank", {})
local lsp_group = augroup("lsp_group_p", {})

-- local diagnostic_lines_ns = vim.api.nvim_create_namespace("Diagnostic Lines")
-- local orig_signs_handler = vim.diagnostic.handlers.signs
-- local function severity_highlight(severity)
--     return 'DiffDelete'
-- end
-- vim.diagnostic.handlers.signs = {
--     show = function(_, bufnr, _, opts)
--         -- Handle diagnostics for whole buffer for ns convenience
--         local diagnostics = vim.diagnostic.get(bufnr)
--         for _, diagnostic in ipairs(diagnostics) do
--             vim.api.nvim_buf_set_extmark(
--                 diagnostic.bufnr,
--                 diagnostic_lines_ns,
--                 diagnostic.lnum, 0,
--                 { line_hl_group = severity_highlight(diagnostic.severity) }
--             )
--         end
--         orig_signs_handler.show(diagnostic_lines_ns, bufnr, diagnostics, opts)
--     end,
--     hide = function(_, bufnr)
--         vim.api.nvim_buf_clear_namespace(bufnr, diagnostic_lines_ns, 0, -1)
--         orig_signs_handler.hide(diagnostic_lines_ns, bufnr)
--     end,
-- }

autocmd("TextYankPost", {
    group = yank_group,
    pattern = "*",
    callback = function()
        vim.highlight.on_yank({
            higroup = "IncSearch",
            timeout = 40,
        })
    end,
})

-- local function hide_diagnostics()
--     vim.diagnostic.config({ -- https://neovim.io/doc/user/diagnostic.html
--         virtual_text = false,
--         signs = false,
--         underline = false,
--     })
-- end
-- local function show_diagnostics()
--     vim.diagnostic.config({
--         virtual_text = true,
--         signs = true,
--         underline = true,
--     })
-- end
-- vim.keymap.set("n", "<leader>dh", hide_diagnostics)
-- vim.keymap.set("n", "<leader>ds", show_diagnostics)

local signs = {
    ERROR = '🆘',
    WARN = '💥',
    HINT = '🗣️',
    INFO = '👿',
}

vim.diagnostic.config {
    virtual_text = {
        prefix = function(diagnostic)
            return signs[vim.diagnostic.severity[diagnostic.severity]]
        end,
    },
}

local keymap = vim.keymap -- for conciseness

vim.api.nvim_create_autocmd("LspAttach", {
    group = lsp_group,
    callback = function(ev)
        -- Buffer local mappings.
        -- See `:help vim.lsp.*` for documentation on any of the below functions
        local opts = { buffer = ev.buf, silent = true }

        opts.desc = "Show Ffull error"
        keymap.set("n", "sfe", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)

        -- set keybinds
        opts.desc = "Show LSP references"
        keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references

        opts.desc = "Go to declaration"
        keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

        opts.desc = "Show LSP definitions"
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts) -- show lsp definitions

        opts.desc = "Show LSP implementations"
        keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts) -- show lsp implementations

        opts.desc = "Show LSP type definitions"
        keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts) -- show lsp type definitions

        opts.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts) -- see available code actions, in visual mode will apply to selection

        opts.desc = "Smart rename"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts) -- smart rename

        opts.desc = "Show buffer diagnostics"
        keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts) -- show  diagnostics for file

        opts.desc = "Show line diagnostics"
        keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

        opts.desc = "Go to previous diagnostic"
        keymap.set("n", "[d", vim.diagnostic.goto_prev, opts) -- jump to previous diagnostic in buffer

        opts.desc = "Go to next diagnostic"
        keymap.set("n", "]d", vim.diagnostic.goto_next, opts) -- jump to next diagnostic in buffer

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opts) -- show documentation for what is under cursor

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts) -- mapping to restart lsp if necessary
    end,
})
