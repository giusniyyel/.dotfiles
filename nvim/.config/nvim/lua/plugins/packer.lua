vim.cmd [[packadd packer.nvim]]
return require("packer").startup(
  function()
    use {"ahmedkhalf/lsp-rooter.nvim"}
    use {"dracula/vim", as = "dracula"}
    use {"folke/lua-dev.nvim"}
    use {"folke/todo-comments.nvim"}
    use {"folke/trouble.nvim"}
    use {"glepnir/dashboard-nvim"}
    use {"glepnir/lspsaga.nvim"}
    use {"hoob3rt/lualine.nvim"}
    use {"hrsh7th/nvim-compe"}
    use {"kyazdani42/nvim-tree.lua"}
    use {"kyazdani42/nvim-web-devicons"}
    use {"lewis6991/gitsigns.nvim"}
    use {"mhinz/vim-signify"}
    use {"neovimhaskell/haskell-vim"}
    use {"neovim/nvim-lspconfig"}
    use {"nvim-lua/plenary.nvim"}
    use {"nvim-lua/popup.nvim"}
    use {
      "nvim-telescope/telescope.nvim",
      requires = {
        {"nvim-telescope/telescope-fzy-native.nvim"},
        {"nvim-telescope/telescope-media-files.nvim"}
      }
    }
    use {"nvim-treesitter/nvim-treesitter", branch = "0.5-compat"}
    use {"nvim-treesitter/nvim-treesitter-textobjects", branch = "0.5-compat"}
    use {"nvim-treesitter/playground"}
    use {"phaazon/hop.nvim"}
    use {"romainl/vim-cool"}
    use {"SirVer/ultisnips"}
    use {"wbthomason/packer.nvim"}
    use {"windwp/nvim-autopairs"}
  end
)
