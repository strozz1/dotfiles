local builtin = require('telescope.builtin')

local function exec()
    local buf = vim.api.nvim_create_buf(false, "nofile")
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
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Search files/words
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<C-b>', builtin.buffers, {})
vim.keymap.set('n', '<C-s>', builtin.live_grep, {})


vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ef', exec, {})
vim.keymap.set("x", "<leader>p", "\"_dP")    --paste w/o copying

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- bloque abajo
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- bloque arriba
vim.keymap.set('n', '<leader>gq', function()
    vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
end, opts)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.code_action)
vim.keymap.set("n", "gr", vim.lsp.buf.rename)

vim.keymap.set('n', '<Left>', ':echo "No left for you!"<CR>', { noremap = true })
vim.keymap.set('v', '<Left>', ':<C-u>echo "No left for you!"<CR>', { noremap = true })
vim.keymap.set('i', '<Left>', '<C-o>:echo "No left for you!"<CR>', { noremap = true })

vim.keymap.set('n', '<Right>', ':echo "No right for you!"<CR>', { noremap = true })
vim.keymap.set('v', '<Right>', ':<C-u>echo "No right for you!"<CR>', { noremap = true })
vim.keymap.set('i', '<Right>', '<C-o>:echo "No right for you!"<CR>', { noremap = true })

vim.keymap.set('n', '<Up>', ':echo "No up for you!"<CR>', { noremap = true })
vim.keymap.set('v', '<Up>', ':<C-u>echo "No up for you!"<CR>', { noremap = true })
vim.keymap.set('i', '<Up>', '<C-o>:echo "No up for you!"<CR>', { noremap = true })

vim.keymap.set('n', '<Down>', ':echo "No down for you!"<CR>', { noremap = true })
vim.keymap.set('v', '<Down>', ':<C-u>echo "No down for you!"<CR>', { noremap = true })
vim.keymap.set('i', '<Down>', '<C-o>:echo "No down for you!"<CR>', { noremap = true })
