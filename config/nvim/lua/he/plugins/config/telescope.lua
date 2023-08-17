require("telescope").setup({
	extensions = {
		-- file_browser = {
		-- 	-- theme = "ivy",
		-- 	-- disables netrw and use telescope-file-browser in its place
		-- 	hijack_netrw = true,
		-- 	mappings = {
		-- 		["i"] = {
		-- 			-- your custom insert mode mappings
		-- 		},
		-- 		["n"] = {
		-- 			-- your custom normal mode mappings
		-- 		},
		-- 	},
		-- },
		fzf = {
			fuzzy = true,
			override_generic_sorter = true,
			override_file_sorter = true,
			case_mode = "smart_case",
		},
	},
})

-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require("telescope").load_extension("fzf")
