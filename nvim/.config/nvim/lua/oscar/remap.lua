local builtin = require('telescope.builtin')
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Search files/words
vim.keymap.set('n', '<C-p>', builtin.find_files, {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<C-m>', builtin.buffers, {})
vim.keymap.set('n', '<C-s>', builtin.live_grep, {})
vim.keymap.set('n', '<C-u>', "<C-u>zz", {})
vim.keymap.set('n', '<C-d>', "<C-d>zz", {})


vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>ef', ':CCompile<CR>', {})
vim.keymap.set("x", "<leader>p", "\"_dP")    --paste w/o copying

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- bloque abajo
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- bloque arriba
vim.keymap.set('n', '<leader>gq', function()
    vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
end, opts)

vim.keymap.set("n", "<leader>f", vim.lsp.buf.code_action)
vim.keymap.set("n", "gr", vim.lsp.buf.rename)
