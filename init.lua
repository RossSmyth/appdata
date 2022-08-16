vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.tabstop = 8
vim.opt.softtabstop = 0
vim.opt.expandtab = true
vim.opt.shiftwidth = 4
vim.opt.smarttab = true
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

vim.cmd [[
  tnoremap <Esc> <C-\><C-n>
]]
