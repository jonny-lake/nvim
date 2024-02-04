vim.g.mapleader = " "
-- movement maps
vim.keymap.set({ 'n', 'v' }, 'j', 'h', { desc = 'move down' })
vim.keymap.set({ 'n', 'v' }, ';', 'l', { desc = 'move right' })
vim.keymap.set({ 'n', 'v' }, 'k', 'j', { desc = 'move up' })
vim.keymap.set({ 'n', 'v' }, 'l', 'k', { desc = 'move left' })

-- move to new window after creating
vim.keymap.set('n', '<leader>nv', ':vs<cr> <c-w><right>', { desc = 'create new vertical window' })
vim.keymap.set('n', '<leader>ns', ':sp<cr> <c-w><down>', { desc = 'create new horizontal window' })

vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv", { desc = 'move line up' })
vim.keymap.set("v", "L", ":m '<-2<CR>gv=gv", { desc = 'move line down' })

-- writing
vim.g.spelllang = 'en_us'
vim.keymap.set('n', '<leader>sp', ':set spell<cr>', { desc = 'enable spell check' })
vim.keymap.set('n', '<leader>spx', ':set nospell<cr>', { desc = 'disable spell check' })

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set({ 'n', 'v' }, 'k', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ 'n', 'v' }, 'l', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- resize buffer
vim.keymap.set('n', '<leader><right>', '10<c-w>>', { desc = 'increase width of buffer' })
vim.keymap.set('n', '<leader><left>', '10<c-w><', { desc = 'decrease width of buffer' })
vim.keymap.set('n', '<leader><down>', '10<c-w>-', { desc = 'decrease height of buffer' })
vim.keymap.set('n', '<leader><up>', '10<c-w>+', { desc = 'increase height of buffer' })

-- change buffer
vim.keymap.set('n', '<s-right>', '<c-W><right>', { desc = 'move to right buffer' })
vim.keymap.set('n', '<s-left>', '<c-W><left>', { desc = 'move to left buffer' })
vim.keymap.set('n', '<s-up>', '<c-W><up>', { desc = 'move to upper buffer' })
vim.keymap.set('n', '<s-down>', '<c-W><down>', { desc = 'move to lower buffer' })

-- move buffer
vim.keymap.set('n', '<leader><s-j>', '<c-w><s-h>', { desc = 'move buffer to left' })
vim.keymap.set('n', '<leader>;', '<c-w><s-l>', { desc = 'move buffer to right' })
vim.keymap.set('n', '<leader><s-k>', '<c-w><s-j>', { desc = 'move buffer to up' })
vim.keymap.set('n', '<leader><s-l>', '<c-w><s-k>', { desc = 'move buffer to down' })

-- exit insert mode using kl keystroke
vim.keymap.set({ 'i', 'v' }, 'kl', '<ESC>', { desc = 'esc insert or visual mode using k-l' })
-- exit terminal mode using kl keystroke
vim.keymap.set('t', 'kl', "<C-\\><C-n>", { desc = 'esc terminal mode using k-l' })

local function check_platform()
    local handle = io.popen("uname")
    if handle == nil then
        return
    end
    local result = handle:read("*a")
    handle:close()

    if result:find("Linux") then
        vim.cmd("set shell=/bin/bash")
    else
        vim.cmd("set shell=powershell.exe")
    end
end

check_platform()


-- simple stuff
vim.keymap.set("n", "K", "mzJ`z", { desc = 'join line' })
vim.keymap.set("n", "<C-d>", "<C-d>zz", { desc = 'scroll down' })
vim.keymap.set("n", "<C-u>", "<C-u>zz", { desc = 'scroll up' })
-- vim.keymap.set("n", "n", "nzzzv")
-- vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dp]], { desc = 'paste without overwriting clipboard' })

-- yank into clipboard register
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]], { desc = 'yank into clipboard' })
vim.keymap.set("n", "<leader>y", [["+y]], { desc = 'yank into clipboard' })

-- delete line or highlighted text
vim.keymap.set({ "n", "v" }, "<leader>d", [["_d]],
    { desc = 'delete line or highlighted text without overwriting clipboard' })

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format, { desc = 'format' })

-- go to error
vim.keymap.set("n", "<C-l>", "<cmd>cnext<CR>zz", { desc = 'go to next error' })
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz", { desc = 'go to previous error' })
vim.keymap.set("n", "<leader>l", "<cmd>lnext<CR>zz", { desc = 'go to next location' })
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz", { desc = 'go to previous location' })

-- change all occurences of current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'change all occurences of current word' })
-- chmod +x on current buffer
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = 'chmod +x on current buffer' })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/jonnythemonke/packer.lua<CR>", { desc = 'open packer config' });
