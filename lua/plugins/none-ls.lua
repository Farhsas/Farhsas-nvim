return {
    "nvimtools/none-ls",
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            sources = {
                null.ls.builtins.formatting.stylua,
                null.ls.builtins.formatting.prettier,
                null.ls.builtins.formatting.black,
                null.ls.builtins.formatting.isort,
            },
        })
        vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
    end,
}