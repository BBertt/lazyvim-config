return {
  "hrsh7th/cmp-cmdline",
  -- This plugin depends on nvim-cmp, so it's a good practice to specify it.
  -- LazyVim will automatically handle the loading order.
  dependencies = { "hrsh7th/nvim-cmp", "hrsh7th/cmp-buffer", "hrsh7th/cmp-path" },
  config = function()
    local cmp = require("cmp")

    -- Setup for search commandline completion ('/')
    -- This uses words from the current buffer as completion sources.
    cmp.setup.cmdline("/", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = {
        { name = "buffer" },
      },
    })

    -- Setup for command-line completion (':')
    -- This uses file paths and existing vim commands as completion sources.
    cmp.setup.cmdline(":", {
      mapping = cmp.mapping.preset.cmdline(),
      sources = cmp.config.sources({
        { name = "path" },
      }, {
        {
          name = "cmdline",
          option = {
            -- You can customize which commands to ignore here
            ignore_cmds = { "Man", "!" },
          },
        },
      }),
    })
  end,
}
