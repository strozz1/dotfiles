require("trouble").setup({
  mode = "lsp_document_symbols",
  sections = { "diagnostics", "references" },
  filters = { buf = 0 },
})
