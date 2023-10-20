-- Set highlight on search
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Make line numbers default
vim.opt.number = true

-- relative numbers
vim.opt.relativenumber = true
-- Enable mouse mode
-- vim.opt.mouse = 'a'

-- Enable break indent
vim.opt.breakindent = true

-- Save undo history
vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.nvim/undodir"
vim.opt.undofile = true

-- Case insensitive searching UNLESS /C or capital in search
vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false
vim.opt.scrolloff = 8

-- Decrease update time
vim.opt.updatetime = 50

vim.opt.signcolumn = 'yes'

vim.opt.termguicolors = true

-- vim.opt.colorcolumn = "80"

-- Set completeopt to have a better completion experience
vim.opt.completeopt = 'menuone,noselect'

-- clipboard set to host
-- vim.cmd('set clipboard+=unnamedplus')
--
-- vim.cmd("let g:clipboard = {'name': 'win32yank-wsl', 'copy': {'+': 'win32yank.exe -i --crlf', '*': 'win32yank.exe -i --crlf',},'paste': { '+': 'win32yank.exe -o --lf', '*': 'win32yank.exe -o --lf',},'cache_enabled': 0, }")


-- netrw
-- vim.opt.netrw_liststyle = 0
-- vim.opt.netrw_browse_split = 2

-- switch pwd to current buffer
vim.api.nvim_create_autocmd('BufEnter', {
  callback = function()
    vim.cmd("silent! lcd %:p:h")
  end;

})
