-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<leader>dh", "<cmd>DiffviewFileHistory<cr>", { desc = "Repo history" })

vim.keymap.set("n", "<leader>df", "<cmd>DiffviewFileHistory --follow %<cr>", { desc = "File history" })

vim.keymap.set("v", "<leader>dl", "<Esc><Cmd>'<,'>DiffviewFileHistory --follow<CR>", { desc = "Range history" })

vim.keymap.set("n", "<leader>dl", "<Cmd>.DiffviewFileHistory --follow<CR>", { desc = "Line history" })

vim.keymap.set("n", "<leader>do", "<cmd>DiffviewOpen<cr>", { desc = "Repo diff" })

local function get_default_branch_name()
  local res = vim.system({ "git", "rev-parse", "--verify", "main" }, { capture_output = true }):wait()
  return res.code == 0 and "main" or "master"
end

-- Diff against local master branch
vim.keymap.set("n", "<leader>dm", function()
  vim.cmd("DiffviewOpen " .. get_default_branch_name())
end, { desc = "Diff against master" })

-- Diff against remote master branch
vim.keymap.set("n", "<leader>dM", function()
  vim.cmd("DiffviewOpen HEAD..origin/" .. get_default_branch_name())
end, { desc = "Diff against origin/master" })

-- Highlight changed words.
vim.keymap.set("n", "<leader>dw", require("gitsigns").toggle_word_diff, { desc = "Toggle word diff" })

-- Highlight added lines.
vim.keymap.set("n", "<leader>dL", require("gitsigns").toggle_linehl, { desc = "Toggle line highlight" })

-- Highlight removed lines.
vim.keymap.set("n", "<leader>dv", require("gitsigns").preview_hunk_inline, { desc = "Toggle deleted (all)" })

vim.keymap.set("n", "<leader>dh", require("gitsigns").preview_hunk, { desc = "Preview hunk" })
