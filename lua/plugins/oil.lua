return {
  "stevearc/oil.nvim",
  lazy = false,
  opts = {
    default_file_explorer = true,
    view_options = {
      show_hidden = true,
    },
  },
  keys = {
    { "-", function() require("oil").open(vim.fn.getcwd()) end, desc = "Abrir directorio actual" },
  },
}
