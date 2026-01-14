return {
  "rebelot/kanagawa.nvim",
  priority = 1000,
  config = function()
    require("kanagawa").setup({
      transparent = false,
      theme = "dragon", -- wave, dragon, lotus
    })
    -- vim.cmd.colorscheme("kanagawa")
  end,
}
