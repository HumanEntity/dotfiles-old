local M = {}
local opts = {
    note_dir = "~/notes",
    split_cmd = "new",
    extension = "md"
}

M.load_note_dir = function ()
    vim.cmd(M.opts.split_cmd)
    vim.cmd("edit " .. M.opts.note_dir)
end

M.quicknote = function (name)
    vim.cmd(M.opts.split_cmd)
    -- vim.cmd("edit " .. M.opts.note_dir .. "/" .. name .. "." .. M.opts.extension)
end


M.create_default_mappings = function ()
    local map = vim.keymap.set

    map("n", "<leader>nd", function () M.load_note_dir() end)
end

M.opts = opts

M.setup = function(options)
    for opt, _ in pairs(M.opts) do
        if options[opt] ~= nil then
            M.opts[opt] = options[opt]
        end
    end
end

return M
