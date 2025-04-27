vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false

local home = os.getenv("HOME")
if home == nil then
    home = os.getenv("USERPROFILE") -- Windows alternative to HOME
end

vim.opt.undodir = home .. "/.vim/undodir"

vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

vim.g.mapleader = " "

--vim.g.terminal_emulator='powershell'
vim.api.nvim_set_var('terminal_emulator', 'powershell')
vim.opt.shell = 'powershell.exe'
