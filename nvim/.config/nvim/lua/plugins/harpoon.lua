local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

local map = vim.keymap.set

map("n", "<leader>pa", mark.add_file, { desc = "Harpoon add file" })
map("n", "<leader>ph", ui.toggle_quick_menu, { desc = "Harpoon menu"})

map("n", "<C-h>", function() ui.nav_file(1) end, { desc = "Harpoon 1 file" })
map("n", "<C-t>", function() ui.nav_file(2) end, { desc = "Harponn 2 file" })
-- map("n", "<C-n>", function() ui.nav_file(3) end)
-- map("n", "<C-s>", function() ui.nav_file(4) end)
