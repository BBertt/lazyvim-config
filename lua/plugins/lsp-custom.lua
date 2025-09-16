-- File: ~/.config/nvim/lua/plugins/lsp-custom.lua

return {
  {
    "neovim/nvim-lspconfig",
    opts = function(_, opts)
      local on_publish_diagnostics = vim.lsp.diagnostic.on_publish_diagnostics
      opts.servers.bashls = vim.tbl_deep_extend("force", opts.servers.bashls or {}, {
        handlers = {
          ["textDocument/publishDiagnostics"] = function(err, res, ...)
            -- Get the file's base name (e.g., ".env.local")
            local file_name = vim.fn.fnamemodify(vim.uri_to_fname(res.uri), ":t")

            -- If the file name does NOT start with .env, process diagnostics normally
            if string.match(file_name, "^%.env") == nil then
              return on_publish_diagnostics(err, res, ...)
            end
            -- Otherwise, do nothing, effectively silencing all diagnostics for .env files
          end,
        },
      })
    end,
  },
}
