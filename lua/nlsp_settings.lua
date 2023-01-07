local M = {
    'tamago324/nlsp-settings.nvim',
    requires = {
        {'neovim/nvim-lspconfig'}
    },
    config = function()
        require"nlspsettings".setup()
    end
}

return M
