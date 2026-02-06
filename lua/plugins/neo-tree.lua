return {
  "nvim-neo-tree/neo-tree.nvim",
  filesystem = {
    -- This ensures that when you change the root in Neo-tree,
    -- it also changes the actual 'cd' of your Neovim session.
    bind_to_cwd = true,
    follow_current_file = {
      enabled = true,
    },
    use_libuv_file_watcher = true, -- Auto-updates when files change
  },
  opts = {
    window = {
      position = "right",
    },
  },
}
