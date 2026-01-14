return {
  "aktersnurra/no-clown-fiesta.nvim",
  priority = 1000,
  config = function()
    require("no-clown-fiesta").setup({
      transparent = false,
      styles = {
        comments = {},
        keywords = {},
        functions = {},
        variables = {},
      },
    })
    -- vim.cmd.colorscheme("no-clown-fiesta")
  end,
}
