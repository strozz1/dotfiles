local builtin = require('telescope.builtin')

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
vim.keymap.set('n', '<leader>ps', function() -- ripgrep required
		builtin.grep_string({ search = vim.fn.input("Grep > ") });
end)
vim.keymap.set("x", "<leader>p", "\"_dP") --paste w/o copying

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- bloque abajo
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- bloque arriba


--vim.keymap.srt("n", "C-f", "<cmd>silent !tmux neww tmux-sessionizer<CR>") --nav entre proyectos






