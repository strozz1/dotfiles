# LSP config
Using 'nvim-lspconfig' for the current configuration.
Using 'mason' for managing and downloading servers.:
- `gr` for rename
- `<leader>f` for code action
- `:q`
## Mason
`Mason config is in after/mason.lua`
Mason manages your lsp servers. Downloads, updates,...
Commands:
- Mason
- MasonUpdate
- MasonInstal
- ...
## Mason Lspconfig
Bridges (connects) mason with lspconfig.
Note: this plugin uses the lspconfig server names in the APIs it exposes - not mason.nvim package names

Commands:
- LspInfo
- LspInstall
- ...

## Fidget
Better UI for LSP logs
