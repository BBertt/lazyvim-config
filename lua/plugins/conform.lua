return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      -- require to install via "npm install -g @fsouza/prettierd"
      javascript = { "prettierd" },
      typescript = { "prettierd" },
      javascriptreact = { "prettierd" },
      typescriptreact = { "prettierd" },
      vue = { "prettierd" },
      css = { "prettierd" },
      scss = { "prettierd" },
      html = { "prettierd" },
      json = { "prettierd" },
      yaml = { "prettierd" },
      markdown = { "prettierd" },
      graphql = { "prettierd" },
    },
    stop_after_first = true,
  },
}
