require("headlines").setup({
	norg = {
		fat_headlines = true,
		fat_headline_upper_string = "▃",
		fat_headline_lower_string = "▀",
	},
})

require("neorg").setup({
	load = {
		["core.defaults"] = {}, -- Loads default behaviour
		["core.concealer"] = {}, -- Adds pretty icons to your documents
		["core.dirman"] = { -- Manages Neorg workspaces
			config = {
				workspaces = {
					notes = "~/dev/notes",
				},
			},
		},
		["core.completion"] = { config = { engine = "nvim-cmp", name = "Neorg" } },
		["core.integrations.telescope"] = {},
	},
})
