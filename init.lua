-- Disable netrw before anything else (using oil.nvim)
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

-- Load core configuration
require("config.options")
require("config.keymaps")
require("config.lazy")
