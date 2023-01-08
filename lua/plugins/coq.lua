return {
    'ms-jpq/coq_nvim',
    dependencies = {
        {
            'ms-jpq/coq.thirdparty',
            branch = '3p',
            opts = {
                {src = 'nvimlua', short_name = 'nLUA', conf_only = true},
            },
            config = function(_, opts)
                require'coq_3p'(opts) 
            end
        },
        {'ms-jpq/coq.artifacts', branch = 'artifacts'}
    },
    branch = 'coq',
    config = function(_, _)
        require'coq'

        vim.cmd 'COQnow --shut-up'
    end,
    lazy = true,
    cmd = 'COQnow',
    event = 'LspAttach'
}
