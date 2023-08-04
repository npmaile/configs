require("tokyonight").setup({
	style = "storm",
	terminal_colors = true,
	transparent = true,
	styles = {
		sidebars = "dark",
	},
	on_highlights = function(colors)
		colors.LineNr = colors.orange
		colors.DiagnosticWarn = colors.red
	end,

	on_colors = function(colors)
		colors.Comment = {
			fg = colors.white,
			style = colors.italic,
		}
	end
})

vim.cmd [[colo tokyonight]]
