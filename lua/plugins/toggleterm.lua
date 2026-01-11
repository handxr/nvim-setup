return {
  "akinsho/toggleterm.nvim",
  version = "*",
  keys = {
    { "<C-t>", "<cmd>ToggleTerm<cr>", mode = { "n", "t" }, desc = "Toggle terminal" },
    { "<leader>th", "<cmd>ToggleTerm direction=horizontal<cr>", desc = "Terminal horizontal" },
    { "<leader>tv", "<cmd>ToggleTerm direction=vertical<cr>", desc = "Terminal vertical" },
    { "<leader>tf", "<cmd>ToggleTerm direction=float<cr>", desc = "Terminal flotante" },
    { "<leader>t1", "<cmd>1ToggleTerm<cr>", desc = "Terminal 1" },
    { "<leader>t2", "<cmd>2ToggleTerm<cr>", desc = "Terminal 2" },
    { "<leader>t3", "<cmd>3ToggleTerm<cr>", desc = "Terminal 3" },
    { "<leader>t4", "<cmd>4ToggleTerm<cr>", desc = "Terminal 4" },
    { "<leader>ts", "<cmd>TermSelect<cr>", desc = "Seleccionar terminal" },
  },
  opts = {
    size = function(term)
      if term.direction == "horizontal" then
        return 15
      elseif term.direction == "vertical" then
        return vim.o.columns * 0.4
      end
    end,
    open_mapping = [[<C-t>]],
    hide_numbers = true,
    shade_terminals = true,
    shading_factor = 2,
    start_in_insert = true,
    insert_mappings = true,
    terminal_mappings = true,
    persist_size = true,
    direction = "float",
    close_on_exit = true,
    shell = vim.o.shell,
    float_opts = {
      border = "rounded",
      winblend = 0,
    },
  },
}
