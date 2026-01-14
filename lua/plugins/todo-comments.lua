return {
  "folke/todo-comments.nvim",
  dependencies = { "nvim-lua/plenary.nvim" },
  event = "VeryLazy",
  opts = {},
  keys = {
    { "]t", function() require("todo-comments").jump_next() end, desc = "Siguiente TODO" },
    { "[t", function() require("todo-comments").jump_prev() end, desc = "Anterior TODO" },
    { "<leader>ft", "<cmd>TodoTelescope<cr>", desc = "Buscar TODOs" },
  },
}
