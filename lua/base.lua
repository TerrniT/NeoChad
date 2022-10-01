local v = vim

-- Theme
v.cmd([[colorscheme everforest]])

v.cmd("autocmd!")

-- Undercurl
v.cmd([[let &t_Cs = "\e[4:3m"]])
v.cmd([[let &t_Ce = "\e[4:0m"]])

v.wo.number = false

v.opt.cursorline = true
v.opt.termguicolors = true
v.opt.winblend = 0
v.opt.wildoptions = 'pum'
v.opt.pumblend = 5
v.opt.background = 'dark'
v.scriptencoding = 'utf-8'
v.opt.encoding = 'utf-8'
v.opt.fileencoding = 'utf-8'
v.opt.formatoptions:append { 'r' }

v.o.background = "dark"
v.opt.title = true
v.opt.autoindent = true
v.opt.smartindent = true
v.opt.hlsearch = true
v.opt.backup = false
v.opt.showcmd = true
v.opt.cmdheight = 1
v.opt.laststatus = 2
v.opt.expandtab = true
v.opt.scrolloff = 10
v.opt.inccommand = 'split'
v.opt.ignorecase = true
v.opt.smarttab = true
v.opt.breakindent = true
v.opt.shiftwidth = 2
v.opt.tabstop = 2
v.opt.wrap = false -- No wrap lines
v.opt.backspace = { 'start', 'eol', 'indent' }
v.opt.path:append { '**' }
v.opt.wildignore:append { '*/node_modules/*' }

-- Turn off paste mode when leaving insert
v.api.nvim_create_autocmd("InsertLeave", {
  pattern = '*',
  command = "set nopaste"
})



