local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end

vim.opt.rtp:prepend(lazypath)

local plugins = {
    'stevearc/dressing.nvim',

    'virchau13/tree-sitter-astro',
    -- LSP/formatting manager,
    'williamboman/mason-lspconfig.nvim',
    'williamboman/mason.nvim',
    -- filetype icons,
    'ryanoasis/vim-devicons',
    -- markdown mode,
    'ixru/nvim-markdown',
    -- zen mode,
    'junegunn/goyo.vim',
    -- colorscheme,
    'Everblush/nvim',
    -- status bar,
    'nvim-lualine/lualine.nvim',
    -- colors hex code preview ,
    'norcalli/nvim-colorizer.lua',
    -- filepicker,
    'nvim-lua/plenary.nvim'  ,
    'nvim-telescope/telescope.nvim',
    -- treesitter... you know what it is,
    {
        'nvim-treesitter/nvim-treesitter',
        lazy = true,
        build = ":TSUpdate",
    },
    -- floating terminal,
    'voldikss/vim-floaterm',

    -- other lsp stff ,
    {
        'neovim/nvim-lspconfig',
        lazy = true,
        event = {"BufReadPre", "BufNewFile"},
    },
    {
        'glepnir/lspsaga.nvim',
        lazy = true,
        event = {"BufReadPre", "BufNewFile"},
    },
    {
        'williamboman/nvim-lsp-installer',
        lazy = true,
        event = {"BufReadPre", "BufNewFile"},
    },

    -- multi-cursor support,
    'terryma/vim-multiple-cursors' ,

    -- git plugin,
    'tpope/vim-fugitive',

    -- quick commenting plugin,
    'tpope/vim-commentary',

    -- makes it easier to surround in stuff,
    'tpope/vim-surround',

    -- Github Copilot
    { 'github/copilot.vim', lazy = true },
    { 'CopilotC-Nvim/CopilotChat.nvim', lazy = true },

    -- cosmetic indent line,
    'Yggdroot/indentLine',

    -- file explorer,
    'nvim-tree/nvim-tree.lua',

    -- Org mode
    {
        "vhyrro/luarocks.nvim",
        priority = 1000,
        config = true,
    },
    {
        "nvim-neorg/neorg",
        dependencies = { "luarocks.nvim" },
        version = "*",
        config = function()
            require("neorg").setup {
                load = {
                    ["core.defaults"] = {},
                    ["core.concealer"] = {},
                    ["core.dirman"] = {
                        config = {
                            workspaces = {
                                notes = "~/notes",
                            },
                            default_workspace = "notes",
                        },
                    },
                },
            }

            vim.wo.foldlevel = 99
            vim.wo.conceallevel = 2
        end,
    },

    'neovim/nvim-lspconfig',
    'hrsh7th/cmp-nvim-lsp',
    'hrsh7th/cmp-buffer',
    'hrsh7th/cmp-path',
    'hrsh7th/cmp-cmdline',
    'hrsh7th/nvim-cmp',

    'nvim-lua/popup.nvim',
}
require("lazy").setup(plugins, {})

require("config.keybinds")
require("config.options")
require("config.commands")
require("config.plugins")
require("config.plugins.copilot")
require("config.plugins.lualine")
require("config.plugins.lsp")
require("config.plugins.nvim-cmp")
