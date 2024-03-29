local map = vim.keymap.set
vim.g.mapleader = " "

-- Neovim
map("n", "<Esc>", function () vim.cmd(":nohl")end)


-- Move lines
map("v", "K", ":m '<-2<CR>gv=gv")
map("v", "J", ":m '>+1<CR>gv=gv")

-- Change indend
map("v", "<", "<gv")
map("v", ">", ">gv")


map("n", "<C-d>", "<C-d>zz")
map("n", "<C-y>", "<C-y>zz")

-- zz on search
map("n", "n", "nzzzv")
map("n", "N", "Nzzzv")

-- Copy to system clipboard
map("n", "<leader>yy", ":let @+=@0<CR>", { desc = "Copy to clipboard" })

-- replace selected text with text contains in buffer and not replace buffer  
map("x", "<leader>p", "\"_dP")



-- Zen Mode
-- local zm = require("zen-mode")
-- map('n', '<leader>z', function()
--     zm.toggle({
--       -- window = {
--       --   width = .85 -- width will be 85% of the editor width
--       -- }
--     })
-- end)
