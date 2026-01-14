-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Limpiar busqueda" })
keymap("i", "jj", "<Esc>", { desc = "Salir del modo insert" })

-- Navegacion entre ventanas
keymap("n", "<C-h>", "<C-w>h", { desc = "Ir a ventana izquierda" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Ir a ventana abajo" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Ir a ventana arriba" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Ir a ventana derecha" })

-- Mover lineas en modo visual
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Mover linea abajo" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Mover linea arriba" })
