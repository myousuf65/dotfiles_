vim.g.mapleader = " "

local keymap = vim.keymap -- for conciseness

keymap.set("n", "<C-n>", "<cmd>NvimTreeToggle<CR>")
