return {
    "nvimtools/none-ls.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim",
        "nvimtools/none-ls-extras.nvim",
    },
    config = function()
        local null_ls = require("null-ls")
        null_ls.setup({
            debug = true,
            sources = {
                -- formatting
                null_ls.builtins.formatting.stylua,
                null_ls.builtins.formatting.clang_format,
                null_ls.builtins.formatting.black,
                -- linting
                null_ls.builtins.diagnostics.flake8,
            },

            on_attach = function(client, bufnr)
                -- Check if clangd is attached to this buffer
                for _, active_client in ipairs(vim.lsp.get_active_clients({ bufnr = bufnr })) do
                    if active_client.name == "clangd" then
                        client.offset_encoding = "utf-8"
                        break
                    end
                end
            end,
        })
    end,
}
