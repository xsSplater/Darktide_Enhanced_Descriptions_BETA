return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`Enhanced_descriptions` encountered an error loading the Darktide Mod Framework.")

		new_mod("Enhanced_descriptions", {
			mod_script       = "Enhanced_descriptions/Enhanced_descriptions",
			mod_data         = "Enhanced_descriptions/Enhanced_descriptions_data",
			mod_localization = "Enhanced_descriptions/Enhanced_descriptions_localization",
		})
	end,
	-- require = {
		-- "",
	-- },
	-- load_before = {
		-- "",
	-- },
	-- load_after = {
		-- "",
	-- },
	packages = {},
}
