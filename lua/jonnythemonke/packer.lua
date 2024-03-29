return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.5',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' }, 'sharkdp/fd'}
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
        config = function()
            vim.cmd('colorscheme rose-pine')
        end
    })

    use {
        "folke/which-key.nvim",
        config = function()
            vim.o.timeout = true
            vim.o.timeoutlen = 300
            require("which-key").setup {
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    }


    -- use { "catppuccin/nvim", as = "catppuccin" } -- catppuccin theme

    use({
        "folke/trouble.nvim",
        config = function()
            require("trouble").setup {
                icons = false,
                -- your configuration comes here
                -- or leave it empty to use the default settings
                -- refer to the configuration section below
            }
        end
    })

    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end, }
    use("nvim-treesitter/playground")
    use("theprimeagen/harpoon")
    use("theprimeagen/refactoring.nvim")
    use("mbbill/undotree")
    use("tpope/vim-fugitive")
    use("nvim-treesitter/nvim-treesitter-context")

    use 'simrat39/rust-tools.nvim'
    use 'puremourning/vimspector'
    use 'preservim/tagbar'
    use {
        'phaazon/hop.nvim',
        branch = 'v2', -- optional but strongly recommended
    }

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },
            { 'hrsh7th/cmp-cmdline' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
            -- Useful status updates for LSP
            'j-hui/fidget.nvim',

            -- Additional lua configuration, makes nvim stuff amazing
            'folke/neodev.nvim',
        }
    }

    use("folke/zen-mode.nvim")
    use("github/copilot.vim")
    use("eandrju/cellular-automaton.nvim")
    use("laytan/cloak.nvim")
    use("echasnovski/mini.nvim")
    use 'numToStr/Comment.nvim' -- "gc" to comment visual regions/lines

    -- tw-breakpoint
    use { 'jonny-lake/tw-breakpoint.nvim' }
    use { 'feline-nvim/feline.nvim', requires = 'nvim-tree/nvim-web-devicons' } -- different statusline

    -- database config
    use { 'tpope/vim-dadbod' }
    use { 'kristijanhusak/vim-dadbod-ui' }

    -- writing
    use { 'junegunn/limelight.vim' }
    use 'tpope/vim-rhubarb'
    use 'lewis6991/gitsigns.nvim'

    -- java
    use 'mfussenegger/nvim-dap'
    use 'mfussenegger/nvim-jdtls'

    -- templ
    use("vrischmann/tree-sitter-templ")

    -- markdown preview
    use({ "iamcco/markdown-preview.nvim", run = "cd app && npm install", setup = function() vim.g.mkdp_filetypes = { "markdown" } end, ft = { "markdown" }, })

    -- noice
    use({'folke/noice.nvim', requires = {
        "MunifTanjim/nui.nvim",
        "rcarriga/nvim-notify"
    }})

end)
