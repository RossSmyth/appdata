local lspsaga_config = {
    'glepnir/lspsaga.nvim',
    config = function()
        require("lspsaga").init_lsp_saga {
            code_action_lightbulb = {
            enable = true,
            sign = true,
            enable_in_insert = true,
            sign_priority = 20,
            virtual_text = false,
            }
        }
    end
}

return lspsaga_config
