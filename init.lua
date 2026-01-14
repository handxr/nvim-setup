-- Desactivar netrw antes de todo (usamos oil.nvim)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Cargar configuracion basica
require("config.options")
require("config.keymaps")
require("config.lazy")
