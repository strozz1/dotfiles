local builtin = require('telescope.builtin')

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function() -- ripgrep required
    builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set("x", "<leader>p", "\"_dP")    --paste w/o copying

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- bloque abajo
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- bloque arriba
--vim.keymap.set('n','<leader>c',function()print("a") end)
vim.keymap.set('n', '<leader>gq', function()
    vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
end, opts)


vim.keymap.set('n', '<Left>', ':echo "No left for you!"<CR>', {noremap = true})
vim.keymap.set('v', '<Left>', ':<C-u>echo "No left for you!"<CR>', {noremap = true})
vim.keymap.set('i', '<Left>', '<C-o>:echo "No left for you!"<CR>', {noremap = true})

vim.keymap.set('n', '<Right>', ':echo "No right for you!"<CR>', {noremap = true})
vim.keymap.set('v', '<Right>', ':<C-u>echo "No right for you!"<CR>', {noremap = true})
vim.keymap.set('i', '<Right>', '<C-o>:echo "No right for you!"<CR>', {noremap = true})

vim.keymap.set('n', '<Up>', ':echo "No up for you!"<CR>', {noremap = true})
vim.keymap.set('v', '<Up>', ':<C-u>echo "No up for you!"<CR>', {noremap = true})
vim.keymap.set('i', '<Up>', '<C-o>:echo "No up for you!"<CR>', {noremap = true})

vim.keymap.set('n', '<Down>', ':echo "No down for you!"<CR>', {noremap = true})
vim.keymap.set('v', '<Down>', ':<C-u>echo "No down for you!"<CR>', {noremap = true})
vim.keymap.set('i', '<Down>', '<C-o>:echo "No down for you!"<CR>', {noremap = true})
