local status, packer = pcall(require, 'packer')
if (not status) then
  print("Packer is not installed")
  return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)

  -- Packer
  use 'wbthomason/packer.nvim'

  -- Theme plugins
  use 'sainnhe/everforest'
  use 'hoob3rt/lualine.nvim'
  use 'akinsho/nvim-bufferline.lua'

  -- Util
  use 'wakatime/vim-wakatime'
  use 'kyazdani42/nvim-web-devicons'
  use 'nvim-lua/plenary.nvim'

  use 'windwp/nvim-autopairs'
  use 'windwp/nvim-ts-autotag'
  use 'sunjon/shade.nvim' -- Shade
  use { "folke/trouble.nvim", requires = "kyazdani42/nvim-web-devicons" } -- trouble.nvim
  use 'lewis6991/gitsigns.nvim' -- Gitsigns

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

  -- Telescope
  use 'nvim-telescope/telescope.nvim'
  use 'nvim-telescope/telescope-file-browser.nvim'

  -- Web-tools
  use 'ray-x/web-tools.nvim'

  -- Dashboard
  use 'glepnir/dashboard-nvim'

  -- Terminal in neovim
  use {"akinsho/toggleterm.nvim", tag = '*' }

end)
