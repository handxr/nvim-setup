return {
  "zenbones-theme/zenbones.nvim",
  dependencies = { "rktjmp/lush.nvim" },
  priority = 1000,
  config = function()
    vim.g.zenbones_compat = 1
    vim.cmd.colorscheme("zenwritten")
  end,
}
