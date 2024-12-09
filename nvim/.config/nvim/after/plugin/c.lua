local toggle = false
local function exec()
    if toggle == false then
        buf = vim.api.nvim_create_buf(false, "nofile")
        toggle = true
    end
    buf = vim.api.nvim_create_buf(false, "nofile")
    local window = vim.api.nvim_open_win(buf, false, {
        split = "right",
        win = 0,
        width = 50
    })
    vim.api.nvim_win_set_option(window, 'wrap', true)
    vim.api.nvim_win_set_option(window, 'relativenumber', false)
    vim.api.nvim_win_set_option(window, 'number', false)
    vim.api.nvim_buf_set_lines(buf, 0, -1, false, { "Compiling" })
end

local function append_to_buffer(buffer, data)
    vim.api.nvim_buf_set_lines(buffer, 0, -1, false, { data })
end

vim.api.nvim_create_user_command('CCompile', function()
    local buffer = vim.api.nvim_create_buf(false, "nofile")
    local window = vim.api.nvim_open_win(buffer, false, {
        split = "right",
        win = 0,
        width = 50
    })

    vim.api.nvim_win_set_option(window, 'wrap', true)
    vim.api.nvim_win_set_option(window, 'relativenumber', false)
    vim.api.nvim_win_set_option(window, 'number', false)
    local cwd = vim.fn.getcwd()
    local result = vim.fs.find({ 'Makefile' }, { path = cwd, upward = false, limit = 1 })
    if next(result) == nil then
        append_to_buffer(buffer, "Makefile not found. Looking for .c files...")
    else
        append_to_buffer(buffer, "Makefile found. Executing...")
        return
    end
    local files = vim.fn.glob("*.c", false, true)
    for _, file in pairs(files) do
        print("Doing this...", file)
    end
end, { desc = "C compile & exex" })
