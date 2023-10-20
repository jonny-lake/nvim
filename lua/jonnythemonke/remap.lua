vim.g.mapleader = " "
-- movement maps
vim.keymap.set({ 'n', 'v' }, 'j', 'h')
vim.keymap.set({ 'n', 'v' }, ';', 'l')
vim.keymap.set({ 'n', 'v' }, 'k', 'j')
vim.keymap.set({ 'n', 'v' }, 'l', 'k')

-- move to new window after creating
vim.keymap.set('n', '<leader>nv', ':vs<cr> <c-w><right>')
vim.keymap.set('n', '<leader>nh', ':sp<cr> <c-w><down>')

vim.keymap.set("v", "K", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "L", ":m '<-2<CR>gv=gv")

-- writing
vim.g.spelllang = 'en_us'
vim.keymap.set('n', '<leader>sp', ':set spell<cr>')
vim.keymap.set('n', '<leader>ns', ':set nospell<cr>')

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set({ 'n', 'v' }, 'k', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
vim.keymap.set({ 'n', 'v' }, 'l', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- resize buffer
vim.keymap.set('n', '<leader><right>', '10<c-w>>')
vim.keymap.set('n', '<leader><left>', '10<c-w><')
vim.keymap.set('n', '<leader><down>', '10<c-w>-')
vim.keymap.set('n', '<leader><up>', '10<c-w>+')

-- change buffer
vim.keymap.set('n', '<s-right>', '<c-W><right>')
vim.keymap.set('n', '<s-left>', '<c-W><left>')
vim.keymap.set('n', '<s-up>', '<c-W><up>')
vim.keymap.set('n', '<s-down>', '<c-W><down>')

-- move buffer
vim.keymap.set('n', '<leader><s-j>', '<c-w><s-h>')
vim.keymap.set('n', '<leader>;', '<c-w><s-l>')
vim.keymap.set('n', '<leader><s-k>', '<c-w><s-j>')
vim.keymap.set('n', '<leader><s-l>', '<c-w><s-k>')

-- exit insert mode using kl keystroke
vim.keymap.set({ 'i', 'v' }, 'kl', '<ESC>', { desc = 'esc insert or visual mode using k-l' })
-- exit terminal mode using kl keystroke
vim.keymap.set('t', 'kl', "<C-\\><C-n>", { desc = 'esc terminal mode using k-l' })

local function check_platform()
    local handle = io.popen("uname")
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
vim.keymap.set("n", "K", "mzJ`z")
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- -- vim with me
-- vim.keymap.set("n", "<leader>vwm", function()
--     require("vim-with-me").StartVimWithMe()
-- end)
-- vim.keymap.set("n", "<leader>svwm", function()
--     require("vim-with-me").StopVimWithMe()
-- end)

vim.keymap.set("x", "<leader>p", [["_dp]])

-- yank into clipboard register
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>y", [["+y]])

-- delete line or highlighted text
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

vim.keymap.set("n", "Q", "<nop>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- go to error
vim.keymap.set("n", "<C-l>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>l", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

-- for fun
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>");

-- change all occurences of current word
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
-- chmod +x on current buffer
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/jonnythemonke/packer.lua<CR>");
