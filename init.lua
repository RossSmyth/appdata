vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true

vim.g.python3_host_prog = 'C:\\dev\\nvim\\py3nvim\\Scripts\\python.exe'

vim.opt.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
vim.opt.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
vim.opt.shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait'
vim.opt.guifont = 'FuraMono NF:h15'

if vim.fn.executable('pwsh') == 1 then 
	vim.opt.shell = 'pwsh' 
else 
	vim.opt.shell = 'powershell' 
end

require('plugins')
require('lspconfig').pyright.setup{}
require('chadtree')
require('coq')
require('coq_3p') {
	{src = "nvimlua", short_name = "nLUA", conf_only = true }
}
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

local rt = require("rust-tools")
rt.setup({
	tools = {
		inlay_hints = {
			parameter_hints_prefix = "",
			other_hints_prefix = "",
			highlight = "Comment",
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
			vim.keymap.set("n", "E", rt.hover_actions.hover_actions, { buffer = bufnr, noremap=true })
			-- Code action groups
			vim.keymap.set("n", "Q", rt.code_action_group.code_action_group, { buffer = bufnr, noremap=true })
		end,
        cmd = { 'C:\\Users\\crs20\\.rustup\\toolchains\\nightly-x86_64-pc-windows-msvc\\bin\\rust-analyzer.exe'}, 
		{
		["rust-analyzer"] = {
			diagnostics = {
				experimental = true,
			},
			checkOnSave = {
                    command = "clippy"
			},
		}
		}
    }
})

vim.cmd [[
  tnoremap <Esc> <C-\><C-n>
  belowright 7new +terminal
  CHADopen
  COQnow
]]
