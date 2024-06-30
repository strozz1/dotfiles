
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<C-p>', ':Files<CR>', {})
vim.keymap.set('n', '<C-g>', builtin.git_files, {})
vim.keymap.set('n', '<C-s>', ':Rg<CR>',{})


