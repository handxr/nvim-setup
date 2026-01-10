return {
  "stevearc/conform.nvim",
  event = { "BufWritePre" },
  cmd = { "ConformInfo" },
  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ async = true })
      end,
      desc = "Formatear archivo",
    },
  },
  config = function()
    require("conform").setup({
      formatters_by_ft = {
        javascript = { "biome", "prettier", "eslint_d", stop_after_first = true },
        typescript = { "biome", "prettier", "eslint_d", stop_after_first = true },
        javascriptreact = { "biome", "prettier", "eslint_d", stop_after_first = true },
        typescriptreact = { "biome", "prettier", "eslint_d", stop_after_first = true },
        json = { "biome", "prettier", stop_after_first = true },
        html = { "prettier" },
        css = { "prettier" },
        markdown = { "prettier" },
      },
      format_on_save = {
        timeout_ms = 1000,
        lsp_fallback = true,
      },
    })
  end,
}
