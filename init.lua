-- Directory where I installed stuff
vim.g.DEV_ENVIRO = vim.loop.os_environ().USERPROFILE .. "/dev"

-- Executables
vim.g.python3_host_prog = vim.g.DEV_ENVIRO .. [[\py3nvim\Scripts\python.exe]]
vim.g.node_host_prog = vim.g.DEV_ENVIRO .. [[\node\node_modules\neovim\bin\cli.js]]

-- Options
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
vim.opt.mouse = nil 
vim.opt.completeopt = "menu"
vim.opt.shellpipe = '2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode'
vim.opt.shellcmdflag = '-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;'
vim.opt.shellredir = '-RedirectStandardOutput %s -NoNewWindow -Wait'

-- Actually able to format documents
vim.api.nvim_set_keymap('n', '<A-F>', '', {
        callback = function(_)
            vim.lsp.buf.format()
        end
    }
)

-- Select Powershell core if avaliable
if vim.fn.executable'pwsh' == 1 then 
	vim.opt.shell = 'pwsh' 
elseif vim.fn.executable'powershell' == 1 then
	vim.opt.shell = 'powershell' 
end

local lazypath = vim.fn.stdpath"data" .. "/lazy/lazy.nvim"
vim.opt.rtp:prepend(lazypath)
require'lazy'.setup('plugins', {})

vim.cmd [[
  tnoremap <Esc> <C-\><C-n>
]]
