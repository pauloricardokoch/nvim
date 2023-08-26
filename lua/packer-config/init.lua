return require'packer'.startup(function(use)
  use 'wbthomason/packer.nvim'
  use 'EdenEast/nightfox.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use 'neovim/nvim-lspconfig'
  use {
    'nvim-treesitter/nvim-treesitter',
    run = ':TSUpdate'
  }
  use {
      'nvim-telescope/telescope.nvim', tag = '0.1.2',
      -- or                          , branch = '0.1.x',
      requires = { 
          {'nvim-lua/plenary.nvim'},
          {'nvim-telescope/telescope-live-grep-args.nvim'}
      },
      config = function()
        require("telescope").load_extension("live_grep_args")
      end
  }
end)
