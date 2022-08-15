local git = {
    'lewis6991/gitsigns.nvim',
    config = function()
        require'gitsigns'.setup()
    end
}

return git
