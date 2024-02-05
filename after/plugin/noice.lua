require("noice").setup({
    lsp = {
        -- override markdown rendering so that **cmp** and other plugins use **Treesitter**
        override = {
            ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
            ["vim.lsp.util.stylize_markdown"] = true,
            ["cmp.entry.get_documentation"] = true, -- requires hrsh7th/nvim-cmp
        },
    },
    -- you can enable a preset for easier configuration
    presets = {
        bottom_search = false,    -- use a classic bottom cmdline for search
        command_palette = true,   -- position the cmdline and popupmenu together
        long_message_to_split = true, -- long messages will be sent to a split
        inc_rename = false,       -- enables an input dialog for inc-rename.nvim
        lsp_doc_border = true,    -- add a border to hover docs and signature help
    },
    routes = {
        {
            view = "notify",
            filter = { event = "msg_showmode" },
        },
    },
})

local noice = require("noice")

vim.keymap.set("n", "<leader>nc", function()
    noice.cmd("dismiss")
end, { desc = "clear notifications" })

vim.keymap.set("n", "<leader>nl", function()
    noice.cmd("last")
end, { desc = "show last message in popup" })

vim.keymap.set("n", "<leader>nt", function()
    noice.cmd("telescope")
end, { desc = "message history in telescope" })

vim.keymap.set("n", "<leader>nh", function()
    noice.cmd("history")
end, { desc = "message history" })
