-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "v" }, "d", '"_d', { desc = "Delete (black hole)" })
vim.keymap.set({ "n", "v" }, "x", '"_x', { desc = "Delete char (black hole)" })
vim.keymap.set({ "n", "v" }, "c", '"_c', { desc = "Change (black hole)" })

vim.keymap.set("n", "<C-S-H>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<C-S-J>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<C-S-K>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<C-S-L>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
