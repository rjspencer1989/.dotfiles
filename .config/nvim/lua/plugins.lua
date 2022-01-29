return require('packer').startup(function()

  -- Packer can manage itself as an optional plugin
  use {'wbthomason/packer.nvim', opt=true}
    -- Development
    use {'https://github.com/mesonbuild/meson'}
    use {'tpope/vim-dispatch'}
    use {'tpope/vim-fugitive'}
    use {'tpope/vim-surround'}
    use {'tpope/vim-commentary'}
    use {'tpope/vim-rhubarb'}
    use {'tpope/vim-unimpaired'}
    use {'tpope/vim-vinegar'}
    use {'tpope/vim-sleuth'}
    use {'wellle/targets.vim'}
    use {'easymotion/vim-easymotion'}
    use {
        'lewis6991/gitsigns.nvim',
         config = function() require('gitsigns').setup() end
    }
    use {'sindrets/diffview.nvim'}
    use {'unblevable/quick-scope'}
    use {'voldikss/vim-floaterm'}
    use {'jiangmiao/auto-pairs'}
    use {
        "folke/which-key.nvim",
        config = function() require("which-key").setup {} end
    }
    use {'chrisbra/NrrwRgn'}
    use {'fatih/vim-go'}
    use {'kyazdani42/nvim-web-devicons'}
    use {'sainnhe/gruvbox-material'}
    use {'NLKNguyen/papercolor-theme'}
    use {'vhdirk/vim-cmake'}
    use {'regen100/cmake-language-server'}

    -- Telescope
    use {'nvim-lua/plenary.nvim'}
    use {'nvim-lua/popup.nvim'}
    use {'nvim-telescope/telescope.nvim'}
    use {
        'nvim-telescope/telescope-frecency.nvim',
        requires = {'tami5/sql.nvim'},
        config = function()
            require('telescope').load_extension('frecency')
        end
    }
    use {'nvim-telescope/telescope-symbols.nvim'}
    use {'nvim-telescope/telescope-github.nvim'}
    use {'neovim/nvim-lspconfig'}
    use {'hrsh7th/nvim-compe'}
        -- Better LSP experience
    use {'glepnir/lspsaga.nvim'}
    use {'onsails/lspkind-nvim'}
    use {'sbdchd/neoformat'}
    use {'p00f/nvim-ts-rainbow'}
    use {'ray-x/lsp_signature.nvim'}
    use {'szw/vim-maximizer'}
    use {'dyng/ctrlsf.vim'}
    use {'dbeniamine/cheat.sh-vim'}
    use {'pechorin/any-jump.vim'}
    use {'kshenoy/vim-signature'}
    use {'kevinhwang91/nvim-bqf'}
    use {
        "folke/trouble.nvim",
        config = function() require("trouble").setup {} end
    }

      use {'hrsh7th/vim-vsnip'}
      use {'hrsh7th/vim-vsnip-integ'}
    use {'rafamadriz/friendly-snippets'}
    use {'cstrap/python-snippets'}
    use {'ylcnfrht/vscode-python-snippet-pack'}
    use {'xabikos/vscode-javascript'}
    use {'golang/vscode-go'}
    use {'rust-lang/vscode-rust'}
    -- Lua development
    use {'folke/lua-dev.nvim'}
    use {'simrat39/symbols-outline.nvim'}
    use {'rafcamlet/nvim-luapad'}
    use {'thinca/vim-themis'}
    use {'tpope/vim-scriptease'}
    use {'junegunn/vader.vim'}
    use {'milisims/nvim-luaref'}
    -- Better syntax
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}
    use {'mhinz/vim-startify'}

     use {'puremourning/vimspector'}
    use {'nvim-telescope/telescope-vimspector.nvim'}

    -- DAP
    use {'mfussenegger/nvim-dap'}
    use {'nvim-telescope/telescope-dap.nvim'}
    use {'mfussenegger/nvim-dap-python'} -- Python
    use {'theHamsta/nvim-dap-virtual-text'}
    use {'rcarriga/nvim-dap-ui'}
    use {'Pocco81/DAPInstall.nvim'}
    use {'jbyuki/one-small-step-for-vimkind'}

    -- Telescope fzf
    use {'nvim-telescope/telescope-fzf-native.nvim', run = 'make'}

    -- Project
    use {'nvim-telescope/telescope-project.nvim'}

    -- Development workflow
    use {'voldikss/vim-browser-search'}
    use {'kkoomen/vim-doge', run = '-> doge#install()'}
    use {'chrisbra/unicode.vim'}

  use {'norcalli/nvim-colorizer.lua'}
  use {'meain/vim-package-info', run = 'npm install'}
  use {'trkw/yarn.vim'}
  use {'townk/vim-autoclose'}
  use {'vim-airline/vim-airline'}
  use {'vim-airline/vim-airline-themes'}
  use {'kyazdani42/nvim-tree.lua', requires = {{'kyazdani42/nvim-web-devicons'}}}

   use {'tpope/vim-dadbod'}
   use {'kristijanhusak/vim-dadbod-ui'}
   use {'kristijanhusak/vim-dadbod-completion'}
   use {'tpope/vim-dotenv' }

    -- Markdown
   use {'npxbr/glow.nvim', run = ':GlowInstall'}
   use {'mzlogin/vim-markdown-toc'}
   use {'iamcco/markdown-preview.nvim', run = 'cd app && yarn install'}
   use {'godlygeek/tabular'}
   use {'plasticboy/vim-markdown'}

    -- Development settings
   use {'editorconfig/editorconfig-vim'}

    -- Writing and note taking
   use {'gyim/vim-boxdraw'}
   use {'preservim/vim-pencil'}
   use {'junegunn/goyo.vim'}
   use {'junegunn/limelight.vim'}
   use {'preservim/vim-colors-pencil'}
   use {'dhruvasagar/vim-dotoo'}
   use {'dhruvasagar/vim-table-mode'}
   use {'fmoralesc/vim-pad'}
end)

