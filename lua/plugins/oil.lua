return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
    float = {
      padding = 2,
      max_width = 90,
      max_height = 30,
    },
    keymaps = {
      ["q"] = "actions.close",
      ["<C-p>"] = "actions.preview",
      ["gs"] = "actions.change_sort",
    },
  },
  keys = {
    { "-", "<cmd>Oil<cr>", desc = "Directorio del archivo" },
    { "<leader>-", function() require("oil").open(vim.fn.getcwd()) end, desc = "Directorio del proyecto" },
  },
}
