function ColorMyPencils(color)
	color = color or 'catppuccin'
	vim.cmd.colorscheme(color)
    --vim.api.nvim_set_hl(0, "Normal", {bg = "#0A1219"})
	--vim.api.nvim_set_hl(0, "Normal", {bg = "none"})
	vim.api.nvim_set_hl(0, "NormalFloat", {bg = "none"})
    vim.api.nvim_set_hl(0, 'LineNr', { fg = "#5BB7F3"})

end


ColorMyPencils()
