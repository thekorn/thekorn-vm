return {
    "stevearc/conform.nvim",
    opts = {
        formatters_by_ft = {
            lua = { "stylua" },
            -- Conform will run multiple formatters sequentially
            -- python = { "isort", "black" },
            -- You can customize some of the format options for the filetype (:help conform.format)
            -- rust = { "rustfmt" },
            -- Conform will run the first available formatter
            javascript = { "biome", "prettierd", stop_after_first = true },
            typescript = { "biome", "prettierd", stop_after_first = true },
            --typescript = function()
            --    local cfg = require("conform.util").root_file({ "biome.json", "biome.jsonc" })
            --    if cfg then
            --        return { "biome", "prettierd", stop_after_first = true }
            --    else
            --        return { "prettierd", stop_after_first = true }
            --    end
            --end,
            nix = { "alejandra", stop_after_first = true },
        },
        format_on_save = {
            -- These options will be passed to conform.format()
            timeout_ms = 500,
            lsp_format = "fallback",
        },
    },
}
