-- require("codeium").setup()

local map = vim.keymap.set

map('i', '<c-e>', function () return vim.fn['codeium#Accept']() end, { expr = true, remap = true })
map('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
map('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
-- map('i', '<c-x>', function() return vim.fn['codeium#Clear']() end, { expr = true })

