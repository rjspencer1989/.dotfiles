vim.o.hidden = true
vim.o.errorbells = false
vim.o.title = true
vim.o.titlestring="%<%F%=%l/%L - nvim"
vim.o.showmode = false
vim.wo.number = true
vim.wo.relativenumber = true
vim.o.showcmd = true
vim.o.background = "dark"
vim.bo.modeline = false
vim.wo.wrap = false
vim.wo.signcolumn = "yes"
vim.o.cmdheight = 2
vim.bo.smartindent = true
vim.bo.expandtab = true
vim.cmd 'syntax on'
vim.cmd 'set backspace=indent,eol,start'
vim.o.updatetime = 300
vim.cmd 'set shortmess+=c'
vim.o.incsearch = true
vim.g.go_def_mapping_enabled = 0
vim.cmd 'filetype plugin indent on'
vim.cmd 'highlight ColorColumn ctermbg=0 guibg=lightgrey'
vim.wo.colorcolumn = "80"
vim.o.showtabline = 2
vim.bo.autoindent = true
vim.bo.tabstop = 4
vim.bo.softtabstop = 4
vim.bo.shiftwidth = 4
vim.g.airline_powerline_fonts = 1
vim.g.mapleader = ' '
vim.o.termguicolors = true
vim.cmd "colorscheme gruvbox-material"
