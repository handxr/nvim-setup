return {
  "folke/which-key.nvim",
  event = "VeryLazy",
  config = function()
    local wk = require("which-key")
    wk.setup({
      delay = 300,
    })
    -- Registrar grupos de teclas
    wk.add({
      { "<leader>f", group = "Buscar" },
      { "<leader>c", group = "Codigo" },
    })
  end,
}
