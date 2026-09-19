---@diagnostic disable: undefined-global
-- The main file that is needed to connect the main files of this mod to the framework.
-- FOR TRANSLATORS: YOU DON'T NEED TO DO ANYTHING IN THIS FILE!

return {
	run = function()
		fassert(rawget(_G, "new_mod"), "`Enhanced_descriptions` encountered an error loading the Darktide Mod Framework.")

		new_mod("Enhanced_descriptions", {
			mod_script       = "Enhanced_descriptions/Enhanced_descriptions",
			mod_data         = "Enhanced_descriptions/Enhanced_descriptions_data",
			mod_localization = "Enhanced_descriptions/Enhanced_descriptions_localization",
		})
	end,
	packages = {},
	load_after = {},
	load_before = {},
	require = {},
	version = "6.0.2b",
	author = "xsSplater",
	url = "https://www.nexusmods.com/warhammer40kdarktide/mods/210",
	github = "https://github.com/xsSplater/Darktide_Enhanced_Descriptions",
}
