return {
  "numToStr/Comment.nvim",
  event = { "BufReadPost", "BufNewFile" },
  config = function()
    require("Comment").setup()
  end,
}
-- Uso:
-- gcc = comentar/descomentar linea
-- gc  = comentar/descomentar seleccion (visual)
-- gbc = comentar bloque
