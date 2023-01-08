return {
    url = 'https://git.sr.ht/~whynothugo/lsp_lines.nvim',
    name = 'lsp_lines.nvim',
    config = function(_, _)
        require'lsp_lines'.setup()
        vim.diagnostic.config {
            virtual_text = false
        }
    end,
    lazy = true
}
