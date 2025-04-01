-- Mason config
require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})


-- diagnosic config
vim.diagnostic.config({
    -- update_in_insert = true,
    float = {
        focusable = false,
        style = "minimal",
        border = "rounded",
        source = "always",
        header = "",
        prefix = "",
    },
})
-- autocomplete
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(ev)
    local client = vim.lsp.get_client_by_id(ev.data.client_id)
    if client:supports_method('textDocument/completion') then
      vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = true })
    end
  end,
})
vim.cmd("set completeopt+=noselect") -- for annoying thing
vim.keymap.set("i","<c-y>",function ()
    vim.lsp.completion.get()
end)
vim.opt.completeopt="menuone,noinsert,popup,fuzzy,preview"
local client_capabilities= vim.tbl_deep_extend(
    "force",
    {},
    vim.lsp.protocol.make_client_capabilities())


-- servers
vim.lsp.config('luals', {
    cmd = { 'lua-language-server' },
    filetypes = { 'lua' },
    root_markers = { '.luarc.json', '.luarc.jsonc' },
    capabilities=client_capabilities,
    settings = {
        Lua = {
            runtime = { version = "Lua 5.1" },
            diagnostics = {
                globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
            }
        }
    }
})
vim.lsp.enable('luals')

-- 68kasm server
vim.lsp.config('kasm_lsp', {
    cmd = { "/home/strozzi/projects/lsp/target/debug/lsp" },
    root_markers = {  },
    filetypes = { 'asm' },
})
vim.lsp.enable('kasm_lsp')

-- rust
vim.lsp.config('rust-analyzer',{
    cmd={"rust-analyzer"},
    root_marker={ "Cargo.toml", ".git"},
})
vim.lsp.enable("rust-analyzer")



