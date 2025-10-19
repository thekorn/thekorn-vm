vim.keymap.set("n", "_", "<cmd>Oil --float<CR>", { desc = "Open Parent Directory in Oil in a floating window" })
vim.keymap.set("n", "-", "<cmd>Oil<CR>", { desc = "Open Parent Directory in Oil" })
vim.keymap.set("n", "gl", function()
    vim.diagnostic.open_float()
end, { desc = "Open Diagnostics in Float" })

vim.keymap.set("n", "<leader>cf", function()
    require("conform").format({
        lsp_format = "fallback",
    })
end, { desc = "Format current file" })
