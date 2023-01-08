return {
    'akinsho/bufferline.nvim',
    version = 'v3.*',
    dependencies = {
        'kyazdani42/nvim-web-devicons'
    },
    config = true,
    lazy = true,
    event = 'BufEnter',
    opts = {
        options = {
           show_buffer_close_icons = false,
           show_close_icon = false
        }
    }
}
