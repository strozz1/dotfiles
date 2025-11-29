local telescope = require('telescope.builtin')
local opts = { remap = false, silent = false }
vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Search files/words
vim.keymap.set('n', '<C-p>', telescope.find_files, {})
vim.keymap.set('n', '<C-g>', telescope.git_files, {})
vim.keymap.set('n', '<C-m>', telescope.buffers, {})
vim.keymap.set('n', '<C-i>', telescope.live_grep, {})
vim.keymap.set('n', '<leader>vh', telescope.help_tags, {})
vim.keymap.set('n', '<C-u>', "<C-u>zz", {})
vim.keymap.set('n', '<C-d>', "<C-d>zz", {})

vim.keymap.set('n', 'fn', ":cnext<CR>")
vim.keymap.set('n', 'fp', ":cprev<CR>")

--vim.keymap.set('n', '<leader>ef', ':CCompile<CR>', {})
vim.keymap.set("x", "<leader>p", "\"_dP")    --paste w/o copying
vim.keymap.set("v", "<leader>y", '"+y', opts)


vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- bloque abajo
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- bloque arriba
vim.keymap.set('n', '<leader>gq', function()
    vim.lsp.buf.format({ async = false, timeout_ms = 10000 })
end, opts)


Virtual_lines = false
Toggle_virtual = function()
    if Virtual_lines then
        Virtual_lines = false
        vim.diagnostic.config({ virtual_text = true })
        vim.diagnostic.config({ virtual_lines = false })
    else
        Virtual_lines = true
        vim.diagnostic.config({ virtual_lines = true })
    end
end

vim.opt.signcolumn = "yes"
vim.diagnostic.config({ virtual_text = true })
vim.keymap.set("n", "<leader>ei", Toggle_virtual, opts)
vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
vim.keymap.set("i", "<C-k>", function() vim.lsp.buf.signature_help() end, opts)
vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
--diagnostics
vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, opts)
vim.keymap.set("n", "<leader>eg", "<cmd>Telescope diagnostics<CR>", opts)
vim.keymap.set("n", "<leader>ee", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)
vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, opts)
vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, opts)

vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
vim.keymap.set("n", "gD", vim.lsp.buf.declaration, opts)
vim.keymap.set("n", "gi", vim.lsp.buf.implementation, opts)
vim.keymap.set("n", "<leader>ca", function() vim.lsp.buf.code_action() end, opts)
vim.keymap.set("n", "<leader>rn", function() vim.lsp.buf.rename() end, opts)


vim.keymap.set("n", "<leader>``", ":vnew ~/.config/nvim/<CR>", { noremap = true, silent = true })
