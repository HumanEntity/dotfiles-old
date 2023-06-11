require("org-bullets").setup({
	concealcursor = false, -- If false then when the cursor is on a line underlying characters are visible
	symbols = {
		-- list symbol
		list = "•",
		-- headlines can be a list
		headlines = { "●", "◉", "◎", "○", "●", "◉", "◎", "○" },
		-- headlines = { "◉", "○", "✸", "✿" },
		-- or a function that receives the defaults and returns a list
		-- headlines = function(default_list)
		-- 	table.insert(default_list, "♥")
		-- 	return default_list
		-- end,
		checkboxes = {
			half = { "", "OrgTSCheckboxHalfChecked" },
			done = { "✓", "OrgDone" },
			todo = { "˟", "OrgTODO" },
		},
	},
})

local status, orgmode = pcall(require, "orgmode")
if not status then
	return
end

orgmode.setup({
	org_agenda_files = { "~/dev/tasks/**/*.org", "~/.agenda.org" },
	-- org_default_notes_file = "~//org/refile.org",
})
