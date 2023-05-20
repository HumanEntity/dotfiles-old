local status, orgmode = pcall(require, "orgmode")
if not status then
	return
end

orgmode.setup({
	org_agenda_files = { "~/dev/tasks/**/*.org", "~/.agenda.org" },
	-- org_default_notes_file = "~//org/refile.org",
})
