local cmp = require("cmp")        -- autocomplete
local cmp_lsp = require("cmp_nvim_lsp")

require("fidget").setup({})
-- Mason config
local fidget = require("fidget")


require("mason").setup({
    ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
    }
})


local capabilities = vim.tbl_deep_extend(
            "force",
            {},
            vim.lsp.protocol.make_client_capabilities(),
            cmp_lsp.default_capabilities())
-- Mason bridge config
require("mason-lspconfig").setup({
    ensure_installed = { "lua_ls", "clangd", "dockerls", "html", "eslint" },
    handlers = {
        function(server_name)
            -- setup servers
            require("lspconfig")[server_name].setup {}
        end,

        ["clangd"] = function()
            local lspconfig = require("lspconfig")
            lspconfig.clangd.setup{
                on_attach = on_attach,
                format = {
                    style = {
                        BasedOnStyle = 'LLVM',
                        IndentWidth = 4,
                        UseTab = 'Never',
                    },
                },
            }
        end,
        ["lua_ls"] = function()
                    local lspconfig = require("lspconfig")
                    lspconfig.lua_ls.setup {
                        capabilities = capabilities,
                        settings = {
                            Lua = {
                                runtime = { version = "Lua 5.1" },
                                diagnostics = {
                                    globals = { "bit", "vim", "it", "describe", "before_each", "after_each" },
                                }
                            }
                        }
                    }
                end,
    }
})

-- autocomplete config
local cmp_select = { behavior = cmp.SelectBehavior.Select }
cmp.setup({
    snippet = {
        expand = function(args)
            require('luasnip').lsp_expand(args.body)
        end,
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        -- documentation = cmp.config.window.bordered(),
    },
    mapping = cmp.mapping.preset.insert({
        ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
        ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
        ['<C-y>'] = cmp.mapping.confirm({ select = true }),
        ['<C-b>'] = cmp.mapping.scroll_docs(-4),
        ['<C-f>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<C-e>'] = cmp.mapping.abort(),
    }),
    sources = cmp.config.sources({
        { name = 'nvim_lsp' },
        { name = 'luasnip' },

    }, {
        { name = 'buffer' },
    })
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


