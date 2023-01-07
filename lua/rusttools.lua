local M = {
    'simrat39/rust-tools.nvim',
    requires = {
        {'neovim/nvim-lspconfig'},
        {'nvim-lua/plenary.nvim'},
        {'mfussenegger/nvim-dap'}
    },
    config = function()
        local rt = require('rust-tools')
        rt.setup {
            tools = {
                inlay_hints = {
                    parameter_hints_prefix = "",
                    other_hints_prefix = "",
                    highlight = "Visual",
                },
                hover_actions = {
                    auto_focus = true,
                },
                crate_graph = {
                    backend = "SVG",
                    output = "graph.svg",
                }
            },
            server = {
                on_attach = function(_, bufnr)
                    -- Make sure omnifunc uses the LSP values
                    local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end
                    buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')
                    -- Hover actions
                    vim.keymap.set("n", "E", rt.hover_actions.hover_actions, { buffer = bufnr, noremap=true })
                    -- Code action groups
                    vim.keymap.set("n", "Q", rt.code_action_group.code_action_group, { buffer = bufnr, noremap=true })
                    -- Rename
                    vim.api.nvim_buf_create_user_command(
                        bufnr,
                        'Rename',
                        function(opts) vim.lsp.buf.rename(opts.args) end,
                        {nargs = 1}
                    )
                end,
                cmd = { 'C:\\Users\\Ross\\.rustup\\toolchains\\nightly-x86_64-pc-windows-msvc\\bin\\rust-analyzer.exe'}, 
                {
                    ['rust-analyzer'] = {
                        diagnostics = {
                            experimental = true,
                        },
                        checkOnSave = {
                            command = 'clippy'
                        },
                    }
                }
            }
        }
    end
}

return M
