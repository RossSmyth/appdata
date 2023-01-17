return {
    'simrat39/rust-tools.nvim',
    dependencies = {
        'nvim-lspconfig',
        'nvim-lua/plenary.nvim',
        'mfussenegger/nvim-dap'
    },
    lazy = true,
    event = "BufEnter *.rs",
    config = function(_, opts)
        require'rust-tools'.setup(opts)
    end,
    opts = {
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
                -- Hover actions
                vim.keymap.set("n", "E", require'rust-tools'.hover_actions.hover_actions, { buffer = bufnr, noremap=true })
                -- Code action groups
                vim.keymap.set("n", "Q", require'rust-tools'.code_action_group.code_action_group, { buffer = bufnr, noremap=true })
                -- Rename
                vim.api.nvim_buf_create_user_command(
                    bufnr,
                    'Rename',
                    function(opts) vim.lsp.buf.rename(opts.args) end,
                    {nargs = 1}
                )
            end,
            cmd = { vim.fn.resolve('~') .. [[\.rustup\toolchains\nightly-x86_64-pc-windows-msvc\bin\rust-analyzer.exe]] }, 
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
}
