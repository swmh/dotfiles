local builtin = require('telescope.builtin')
map = vim.keymap.set
map('n', '<leader>ff', builtin.find_files, { desc = "Find Files"} )
map('n', '<leader>fg', builtin.live_grep, { desc = "Grep"} )
map('n', '<leader>fs', builtin.lsp_document_symbols, { desc = "Symbols"} )
map('n', '<leader>fb', builtin.buffers, { desc = "Buffers"} )
map('n', '<leader>fh', builtin.help_tags, { desc = "Help Tags"})
map('n', '<leader>fR', builtin.lsp_references, { desc = "References"})
map('n', '<leader>fr', builtin.registers, { desc = "Registers"})
map('n', '<leader>fm', builtin.marks, { desc = "Marks"})

