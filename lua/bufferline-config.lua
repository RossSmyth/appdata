local M = {
    'akinsho/bufferline.nvim',
    tag = 'v3.*',
    requires = 'kyazdani42/nvim-web-devicons',
    config = function()
        require'bufferline'.setup{}
    end
}

return M
