return {
    'glepnir/lspsaga.nvim',
    config = function(_, opts)
        require'lspsaga'.init_lsp_saga(opts)
    end,
    opts = {
        code_action_lightbulb = {
            enable = true,
            sign = true,
            enable_in_insert = true,
            sign_priority = 20,
            virtual_text = false,
       }
    },
    lazy = true
}
