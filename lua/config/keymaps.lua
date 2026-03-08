-- Keymaps loaded on VeryLazy event
-- LazyVim defaults: <S-h>/<S-l> for buffer nav, <leader>ca for code actions, etc.

local map = vim.keymap.set

-- Save
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<cr><esc>", { desc = "Save file" })

-- Force close buffer (no questions asked)
map("n", "<leader>bx", "<cmd>bdelete!<cr>", { desc = "Force close buffer" })

-- Splits
map("n", "|", "<cmd>vsplit<cr>", { desc = "Vertical split" })
map("n", "\\", "<cmd>split<cr>", { desc = "Horizontal split" })

-- Snacks picker extras
map("n", "<leader>fH", function() Snacks.picker.highlights() end, { desc = "Find highlights" })
map("n", "<leader>fp", function() Snacks.picker.command_history() end, { desc = "Find command history" })
map("n", "<leader>fu", function() Snacks.picker.undo() end, { desc = "Find undo history" })
