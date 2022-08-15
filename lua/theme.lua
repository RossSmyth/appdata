local M = {
    'folke/tokyonight.nvim',
    config = function()
        vim.g.tokyonight_italic_comments = false
        vim.g.tokyonight_italic_keywords = false
        vim.g.tokyonight_italic_functions = false
        vim.g.tokyonight_italic_variables = false

        vim.cmd [[
            colorscheme tokyonight
        ]]
    end
}

return M
