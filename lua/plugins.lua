local use = require('packer').use
require('packer').startup(function()
  use 'wbthomason/packer.nvim' -- Package manager
  use 'neovim/nvim-lspconfig' -- Configurations for Nvim LSP
  use 'ms-jpq/coq_nvim' -- LSP autocompletion and stuff
  use 'ms-jpq/coq.thirdparty' -- lua & other stuff
  use 'ms-jpq/chadtree' -- file tree
  use {'simrat39/rust-tools.nvim', requires = {'neovim/nvim-lspconfig', 'nvim-lua/plenary.nvim', 'mfussenegger/nvim-dap'}}
  use {'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build' }
  use {'nvim-telescope/telescope.nvim', tag = '0.1.0', require = {'nvim-lua/plenary.nvim', 'nvim-telescope/telescope-fzf-native.nvim'}}
  use 'folke/tokyonight.nvim'
  use {'https://git.sr.ht/~whynothugo/lsp_lines.nvim', as = 'lsp_lines'}
  use 'stevearc/overseer.nvim'
  use 'lewis6991/gitsigns.nvim'
  use {'filipdutescu/renamer.nvim', branch = 'master', requires = {'nvim-lua/plenary.nvim'} }
end)
