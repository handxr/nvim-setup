local opt = vim.opt

-- Numeros de linea
opt.number = true
opt.relativenumber = true

-- Tabs & indentacion (2 espacios para web dev)
opt.tabstop = 2
opt.shiftwidth = 2
opt.expandtab = true
opt.autoindent = true
opt.smartindent = true

-- Busqueda
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false
opt.incsearch = true

-- Apariencia
opt.termguicolors = true
opt.signcolumn = "yes"
opt.cursorline = true
opt.scrolloff = 8

-- Comportamiento
opt.splitright = true
opt.splitbelow = true
opt.clipboard = "unnamedplus"
opt.undofile = true
opt.updatetime = 250
opt.timeoutlen = 300

-- Desactivar netrw banner (mas limpio)
vim.g.netrw_banner = 0
vim.g.netrw_liststyle = 3

-- Diagnosticos en linea
vim.diagnostic.config({
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = false,
})
