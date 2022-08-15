local M = {
    'nvim-telescope/telescope.nvim',
    requires = {
        {'nvim-lua/plenary.nvim'},
	{'nvim-telescope/telescope-fzf-native.nvim', run = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release && cmake --install build --prefix build'}
    },
    config = function()
        require('fzf_lib')
 	local tele = require('telescope')
	tele.setup {
  	    extensions = {
    		fzf = {
      		    fuzzy = true,                    -- false will only do exact matching
      		    override_generic_sorter = true,  -- override the generic sorter
      		    override_file_sorter = true,     -- override the file sorter
      		    case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                                     -- the default case_mode is "smart_case"
                }
	    }
	}
	tele.load_extension('fzf')
    end
}
return M 
