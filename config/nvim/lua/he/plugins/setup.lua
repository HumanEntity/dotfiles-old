
local M = {}

M.setup = function (path)
    local status, _ = pcall(require, path)
    if not status then
        return -1
    end
    return 0
end

M.setup_list = function (paths)
    for path in paths do
        M.setup(path)
    end
end

return M
