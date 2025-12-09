return {
  -- Main plugin for Mermaid integration
  "selimacerbas/mermaid-playground.nvim",

  -- Dependency to manage the live server from Neovim
  dependencies = {
    "barrett-ruth/live-server.nvim",
    -- Add a config function for the dependency
    config = function()
      require("live-server").setup({
        -- You can add your live-server options here if needed,
        -- otherwise an empty setup is often enough to register commands.
      })
    end,
  },

  -- Setup function
  config = function()
    require("mermaid_playground").setup({
      -- all optional; sane defaults shown
      workspace_dir = nil, -- defaults to: $XDG_CONFIG_HOME/mermaid-playground
      index_name = "index.html",
      diagram_name = "diagram.mmd",
      overwrite_index_on_start = false, -- don't clobber your customized index.html
      auto_refresh = true,
      auto_refresh_events = { "InsertLeave", "TextChanged", "TextChangedI", "BufWritePost" },
      debounce_ms = 450,
      notify_on_refresh = false,
    })
  end,
}
