-- Leader key
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap.set

-- General
keymap("n", "<leader>e", ":Ex<CR>", { desc = "Abrir explorador de archivos" })
keymap("n", "<Esc>", "<cmd>nohlsearch<CR>", { desc = "Limpiar busqueda" })

-- Navegacion entre ventanas
keymap("n", "<C-h>", "<C-w>h", { desc = "Ir a ventana izquierda" })
keymap("n", "<C-j>", "<C-w>j", { desc = "Ir a ventana abajo" })
keymap("n", "<C-k>", "<C-w>k", { desc = "Ir a ventana arriba" })
keymap("n", "<C-l>", "<C-w>l", { desc = "Ir a ventana derecha" })

-- Mover lineas en modo visual
keymap("v", "J", ":m '>+1<CR>gv=gv", { desc = "Mover linea abajo" })
keymap("v", "K", ":m '<-2<CR>gv=gv", { desc = "Mover linea arriba" })

-- Mantener cursor centrado
keymap("n", "<C-d>", "<C-d>zz", { desc = "Scroll abajo centrado" })
keymap("n", "<C-u>", "<C-u>zz", { desc = "Scroll arriba centrado" })
keymap("n", "n", "nzzzv", { desc = "Siguiente busqueda centrada" })
keymap("n", "N", "Nzzzv", { desc = "Busqueda anterior centrada" })

-- Guardar rapido
keymap("n", "<leader>w", "<cmd>w<CR>", { desc = "Guardar archivo" })
keymap("n", "<leader>q", "<cmd>q<CR>", { desc = "Cerrar ventana" })
