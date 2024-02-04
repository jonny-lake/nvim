require("trouble").setup {}

vim.keymap.set("n", "<leader>wd", "<cmd>TroubleToggle workspace_diagnostics<cr>",
    { silent = true, noremap = true }
)

vim.keymap.set("n", "gR", "<cmd>TroubleToggle lsp_references<cr>",
    { silent = true, noremap = true }
)
