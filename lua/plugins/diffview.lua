-- Example for lazy.nvim
return {
  "sindrets/diffview.nvim",
  dependencies = { "nvim-lua/plenary.nvim" }, -- Required dependency
  config = function()
    require("diffview").setup()
  end,
}
