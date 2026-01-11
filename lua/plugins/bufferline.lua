return {
  "akinsho/bufferline.nvim",
  version = "*",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  opts = {
    options = {
      mode = "buffers",
      numbers = "ordinal", -- muestra 1, 2, 3... en cada pestaña
      close_command = "bdelete! %d",
      right_mouse_command = "bdelete! %d",
      diagnostics = "nvim_lsp", -- muestra errores del LSP
      diagnostics_indicator = function(count, level)
        local icon = level:match("error") and " " or " "
        return " " .. icon .. count
      end,
      show_buffer_close_icons = true,
      show_close_icon = false,
      separator_style = "thin",
      always_show_bufferline = true,
      custom_filter = function(buf_number)
        -- Filtrar directorios y netrw
        local buf_ft = vim.bo[buf_number].filetype
        if buf_ft == "netrw" or buf_ft == "" then
          local buf_name = vim.api.nvim_buf_get_name(buf_number)
          -- Si es un directorio, no mostrarlo
          if vim.fn.isdirectory(buf_name) == 1 then
            return false
          end
        end
        return true
      end,
    },
  },
  keys = {
    { "<Tab>", "<cmd>BufferLineCycleNext<cr>", desc = "Siguiente buffer" },
    { "<S-Tab>", "<cmd>BufferLineCyclePrev<cr>", desc = "Buffer anterior" },
    { "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>", desc = "Ir a buffer 1" },
    { "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>", desc = "Ir a buffer 2" },
    { "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>", desc = "Ir a buffer 3" },
    { "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>", desc = "Ir a buffer 4" },
    { "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>", desc = "Ir a buffer 5" },
    { "<leader>6", "<cmd>BufferLineGoToBuffer 6<cr>", desc = "Ir a buffer 6" },
    { "<leader>7", "<cmd>BufferLineGoToBuffer 7<cr>", desc = "Ir a buffer 7" },
    { "<leader>8", "<cmd>BufferLineGoToBuffer 8<cr>", desc = "Ir a buffer 8" },
    { "<leader>9", "<cmd>BufferLineGoToBuffer 9<cr>", desc = "Ir a buffer 9" },
    { "<leader>x", "<cmd>bdelete<cr>", desc = "Cerrar buffer" },
    { "<leader>X", "<cmd>BufferLineCloseOthers<cr>", desc = "Cerrar otros buffers" },
    { "<leader>>", "<cmd>BufferLineMoveNext<cr>", desc = "Mover buffer derecha" },
    { "<leader><", "<cmd>BufferLineMovePrev<cr>", desc = "Mover buffer izquierda" },
  },
}
