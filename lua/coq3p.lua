local coq3p = {
    'ms-jpq/coq.thirdparty',
    config = function()
        require'coq_3p' {
	    {src = 'nvimlua', short_name = 'nLUA', conf_only = true}
	}
    end,
    requires = {'ms-jpq/coq_nvim'}
}
return coq3p
