return {
    { "folke/tokyonight.nvim", lazy = true },
    { "imsnif/kdl.vim" }, -- kdl support for vim
    {
        "catppuccin/nvim",
        name = "catppuccin",
        priority = 1000,
        config = function()
            require("catppuccin").setup({
                flavor = "mocha",
                transparent_background = false,
                dim_inactive = {
                    enabled = true,
                }
            })
        end
    },
    { "morhetz/gruvbox",          lazy = true },
    {
        "rebelot/kanagawa.nvim",
        name = "kanagawa",
        lazy = "true",
        config = function()
            require("kanagawa").setup({
                dimInactive = false,
                globalStatus = true,
                transparent = true,
            })
        end,
    },
    {
        "windwp/nvim-autopairs",
        config = function()
            require("nvim-autopairs").setup({
                disable_in_macro = true,
                map_c_w = true,
            })
        end,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        config = function()
            require("cfg.treesitter").setup()
        end,
    },
    {
        "nvim-treesitter/playground",
        lazy = true,
        dependencies = { "nvim-treesitter/nvim-treesitter" },
    },
    {
        "lukas-reineke/indent-blankline.nvim",
        main = "ibl",
        opts = {},
        config = function()
            require("cfg.ibl").setup()
        end,
    },
    {
        "tpope/vim-fugitive",
        config = function()
            require("cfg.fugitive").setup()
        end,
    },
    {
        "numToStr/Comment.nvim",
        config = function()
            require("cfg.comment_nvim").setup()
        end,
    },
    {
        -- diagnostics looks cool
        "folke/trouble.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("trouble").setup({})
        end,
    },
    {
        "nvim-telescope/telescope.nvim",
        dependencies = { "nvim-lua/popup.nvim", "nvim-lua/plenary.nvim" },
        config = function()
            require("cfg.telescope").setup()
        end,
    },

    {
        "nvim-neorg/neorg",
        lazy = true,
        -- load only when neorg cmd ran or shortcut is given
        cmd = { "Neorg workspace", "Neorg index", "Neorg" },
        keys = { "\\\\" },
        config = function()
            require("cfg.neorg").init()
        end,
        dependencies = { "nvim-lua/plenary.nvim", "nvim-neorg/neorg-telescope" },
    },
    {
        "nvim-lualine/lualine.nvim",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("cfg.lua_line")
        end,
    },
    {
        "iamcco/markdown-preview.nvim",
        lazy = true,
        build = ":call mkdp#util#install()",
        ft = { "markdown" },
    },
    {
        "L3MON4D3/LuaSnip",
        config = function()
            require("luasnip/loaders/from_vscode").lazy_load()
        end,
        dependencies = "rafamadriz/friendly-snippets"
    },
    {
        "rafamadriz/friendly-snippets",
        dependencies = { "L3MON4D3/LuaSnip" },
    },
    {
        "kyazdani42/nvim-tree.lua",
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("cfg.nvim-tree").setup()
        end,
    },

    {
        'j-hui/fidget.nvim', -- lsp status
        tag = 'legacy'
    },
    {
        'simrat39/symbols-outline.nvim',
        config = function()
            require('cfg.lsp.symbols').setup()
        end
    },
    {
        'simrat39/inlay-hints.nvim',
        config = function()
            require("inlay-hints").setup({
                renderer = "inlay-hints/render/eol",
                hints = {
                    parameter = {
                        show = false,
                    }
                }
            })
        end,
        lazy = true,
        ft = { "rust" }
    },
    -- {
    --     'anuvyklack/pretty-fold.nvim',
    --     disable = true,
    --     config = function()
    --         require('pretty-fold').setup({ fill_char = " " })
    --     end
    -- },
    "neovim/nvim-lspconfig",
    {
        'LhKipp/nvim-nu',
        lazy = false,
        build = ":TSInstall nu",
        ft = { "nu" },
        config = function()
            require("nu").setup({ use_lsp_features = false })
        end
    },
    -- nvim cmp plugin and sources
    {
        "hrsh7th/nvim-cmp",
        dependencies = { "neovim/nvim-lspconfig" },
        config = function()
            require("cfg.nvim-cmp").setup()
        end,
    },
    { "saadparwaiz1/cmp_luasnip", dependencies = { "hrsh7th/nvim-cmp", "L3MON4D3/LuaSnip" } },      -- luasnip completion support
    { "hrsh7th/cmp-nvim-lsp",     dependencies = { "hrsh7th/nvim-cmp" } },                          -- basic lsp cmp
    { "hrsh7th/cmp-buffer",       dependencies = { "hrsh7th/nvim-cmp" } },                          -- buffer words completion
    { "hrsh7th/cmp-path",         dependencies = { "hrsh7th/nvim-cmp" } },                          -- path completion
    { "hrsh7th/cmp-nvim-lua",     dependencies = { "hrsh7th/nvim-cmp" } },                          -- lua completion source
    { "onsails/lspkind-nvim",     dependencies = { "hrsh7th/nvim-cmp" } },                          -- lsp completion formatting
    { "petertriho/cmp-git",       dependencies = { "hrsh7th/nvim-cmp", "nvim-lua/plenary.nvim" } }, -- vim spell check
    {
        'NoahTheDuke/vim-just',
        lazy = true,
        ft = { "just" }
    },
    { 'elkowar/yuck.vim', lazy = true, ft = { "yuck" } },
    {
        'glepnir/dashboard-nvim',
        event = 'VimEnter',
        config = function()
            local dashboard = require('dashboard')
            local pokemon = require('pokemon')
            pokemon.setup({
                number = 'random',
                size = 'auto',
            })
            dashboard.setup {
                config = {
                    header = pokemon.header()
                }
            }
        end,
        dependencies = { { 'nvim-tree/nvim-web-devicons', 'ColaMint/pokemon.nvim' } }
    },
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end
    },
    {
        "lervag/vimtex",
        lazy = false,     -- we don't want to lazy load VimTeX
        -- tag = "v2.15", -- uncomment to pin to a specific release
        init = function()
            -- VimTeX configuration goes here, e.g.
            vim.g.vimtex_view_method = "zathura"
        end
    },
    {
        "vhyrro/luarocks.nvim",
        priority = 1001, -- this plugin needs to run before anything else
        opts = {
            rocks = { "magick" },
        },
    },
    -- {
    --     "3rd/image.nvim",
    --     dependencies = { "luarocks.nvim" },
    --     config = function()
    --         require("cfg.image").setup()
    --     end
    -- },
    {
        "nvim-java/nvim-java",
        config = function()
            require("cfg.java").setup()
        end
    },
    {
        "sourcegraph/sg.nvim",
        dependencies = { "nvim-lua/plenary.nvim" },
        config = function()
            require("sg").setup()
        end

    },
    {
        'Exafunction/codeium.vim',
        event = 'BufEnter'
    },
    {
        -- Hints keybinds
        "folke/which-key.nvim",
        opts = {
        },
    },
    -- {
    --     "jackMort/ChatGPT.nvim",
    --     event = "VeryLazy",
    --     config = function()
    --         require("chatgpt").setup({
    --             -- this config assumes you have OPENAI_API_KEY environment variable set
    --             openai_params = {
    --                 -- NOTE: model can be a function returning the model name
    --                 -- this is useful if you want to change the model on the fly
    --                 -- using commands
    --                 -- Example:
    --                 -- model = function()
    --                     --     if some_condition() then
    --                     --         return "gpt-4-1106-preview"
    --                     --     else
    --                     --         return "gpt-3.5-turbo"
    --                     --     end
    --                     -- end,
    --                     model = "gpt-3.5-turbo",
    --                     frequency_penalty = 0,
    --                     presence_penalty = 0,
    --                     max_tokens = 4095,
    --                     temperature = 0.2,
    --                     top_p = 0.1,
    --                     n = 1,
    --                 }
    --             })
    --         end,
    --         dependencies = {
    --             "MunifTanjim/nui.nvim",
    --             "nvim-lua/plenary.nvim",
    --             "folke/trouble.nvim", -- optional
    --             "nvim-telescope/telescope.nvim"
    --         }
    --     },
    }
