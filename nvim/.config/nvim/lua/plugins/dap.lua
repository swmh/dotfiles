local dap, dapui = require("dap"), require("dapui")
local map = vim.keymap.set

require("dap-go").setup()
dapui.setup()

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end


map("n", "<leader>dc", ":DapContinue<CR>", { desc = "Start/Stop" })
-- map("n", "<leader>ds", ":DapContinue<CR>", { desc = "Start" })
map("n", "<leader>db", ":DapToggleBreakpoint<CR>", { desc = "Toggle breakpoint" })
map("n", "<leader>dr", ":lua require('dapui').toggle({ reset = true })<CR>", { desc = "Toggle UI" })
map("n", "<leader>dn", ":DapStepOver<CR>", { desc = "Step over" })
map("n", "<leader>di", ":DapStepInto<CR>", { desc = "Step into" })
map("n", "<leader>do", ":DapStepOut<CR>", { desc = "Step out" })

-- dap.configurations.go = {
--     {
--         name = "Attach to server",
--         type = "go",
--         request = "attach",
--         mode = "remote",
--         program = "/build"
--         -- program = "./${relativeFileDirname}"
--     }
-- }
