local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  -- Packer itself
  use 'wbthomason/packer.nvim'

  -- Theme
  use 'sainnhe/everforest'
  use 'hoob3rt/lualine.nvim'
  use 'akinsho/nvim-bufferline.lua'

  -- Util
  use 'wakatime/vim-wakatime'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'

  -- Treesitter
  use {
    'nvim-treesitter/nvim-treesitter',
    run = function() require('nvim-treesitter.install').update({ with_sync = true }) end,
  }

  -- Coc autocomplection
  use { 'neoclide/coc.nvim', branch = 'release' }

  -- Neo tree
  use {
  "nvim-neo-tree/neo-tree.nvim",
    branch = "v2.x",
    requires = {
      "nvim-lua/plenary.nvim",
      "kyazdani42/nvim-web-devicons", -- not strictly required, but recommended
      "MunifTanjim/nui.nvim",
    }
  }

  -- Gitsigns
  use 'lewis6991/gitsigns.nvim'

  -- Trouble
  use {
  "folke/trouble.nvim",
  requires = "kyazdani42/nvim-web-devicons",
  }

end)
