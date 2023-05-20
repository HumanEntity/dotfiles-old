require("dapui").setup()

local M = {}

local dap, dapui = require("dap"), require("dapui")

dap.listeners.after.event_initialized["dapui_config"] = function()
    dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
    dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
    dapui.close()
end

M.keymaps = {
    {"n", "<leader>dt", ":DapToggleBreakpoint<CR>"},
    {"n","<leader>dx", ":DapTerminate<CR>"},
    {"n", "<leader>do", ":DapStepOver<CR>"},
}

vim.keymap.set("n", "<leader>dt", ":DapToggleBreakpoint<CR>")
vim.keymap.set("n", "<leader>dx", ":DapTerminate<CR>")
vim.keymap.set("n", "<leader>do", ":DapStepOver<CR>")

return M
