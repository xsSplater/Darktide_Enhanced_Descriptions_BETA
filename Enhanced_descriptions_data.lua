---@diagnostic disable: undefined-global, undefined-field

			-- ============ DO NOT DO ANYTHING BELOW! ============ --

local mod = get_mod("Enhanced_descriptions")

local options = {
	name = mod:localize("mod_name"),
	description = mod:localize("mod_description"),
	is_togglable = true,
	options = {
		widgets = {
				--[+ MENUS Module +]--
			{name = mod:localize("enable_menus_file"),
				setting_id = "enable_menus_file",
				default_value = true,
				type = "checkbox",
				description = mod:localize("enable_menus_file_description"),
				
				change = function(new_value)
					mod:set("enable_menus_file", new_value)
				end,
				get = function()
					return mod:get("enable_menus_file") or true
				end
			},
				--[+ CURIOS Module +]--
			{name = mod:localize("enable_curious_file"),
				setting_id = "enable_curious_file",
				default_value = true,
				type = "checkbox",
				description = mod:localize("enable_curious_file_description"),
				
				change = function(new_value)
					mod:set("enable_curious_file", new_value)
				end,
				get = function()
					return mod:get("enable_curious_file") or true
				end
			},
				--[+ PENANCES Module +]--
			{name = mod:localize("enable_penances_file"),
				setting_id = "enable_penances_file",
				default_value = true,
				type = "checkbox",
				description = mod:localize("enable_penances_file_description"),
				
				change = function(new_value)
					mod:set("enable_penances_file", new_value)
				end,
				get = function()
					return mod:get("enable_penances_file") or true
				end
			},
				--[+ WEAPONS Module +]--
			{name = mod:localize("enable_weapons_file"),
				setting_id = "enable_weapons_file",
				default_value = true,
				type = "checkbox",
				description = mod:localize("enable_weapons_file_description"),
				
				change = function(new_value)
					mod:set("enable_weapons_file", new_value)
				end,
				get = function()
					return mod:get("enable_weapons_file") or true
				end
			},
				--[+ TALENTS Module +]--
			{name = mod:localize("enable_talents_file"),
				setting_id = "enable_talents_file",
				default_value = true,
				type = "checkbox",
				description = mod:localize("enable_talents_file_description"),
				
				change = function(new_value)
					mod:set("enable_talents_file", new_value)
				end,
				get = function()
					return mod:get("enable_talents_file") or true
				end
			},
				--[+ NAMES Module - Weapons and Enemies +]--
			{name = mod:localize("enable_names_file"),
				setting_id = "enable_names_file",
				default_value = true,
				type = "checkbox",
				description = mod:localize("enable_names_file_description"),
				
				change = function(new_value)
					mod:set("enable_names_file", new_value)
				end,
				get = function()
					return mod:get("enable_names_file") or true
				end
			},
				--[+ NAMES Module - Talents and Blessings +]--
			{name = mod:localize("enable_names_tal_bless_file"),
				setting_id = "enable_names_tal_bless_file",
				default_value = false,
				type = "checkbox",
				description = mod:localize("enable_names_tal_bless_file_description"),
				
				change = function(new_value)
					mod:set("enable_names_tal_bless_file", new_value)
				end,
				get = function()
					return mod:get("enable_names_tal_bless_file") or true
				end
			},
				--[+ ENHANCED DESCRIPTIONS +]--
			{setting_id = "enhanced_descriptions_",
				type = "group",
				sub_widgets = {
						--[+ ENHANCED DESCRIPTIONS - Psyker + Zealot +]--
					{name = mod:localize("enhanced_descriptions_enabled"),
					setting_id = "enhanced_descriptions_enabled",
					default_value = true,
					type = "checkbox",
					description = mod:localize("enhanced_descriptions_enabled_description"),
					
					change = function(new_value)
						mod:set("enhanced_descriptions_enabled", new_value)
					end,
					get = function()
						return mod:get("enhanced_descriptions_enabled") or true
					end
					},
						--[+ ENHANCED DESCRIPTIONS - Veteran + Ogryn +]--
					{name = mod:localize("enhanced_descriptions_enabled2"),
					setting_id = "enhanced_descriptions_enabled2",
					default_value = true,
					type = "checkbox",
					description = mod:localize("enhanced_descriptions_enabled2_description"),
					
					change = function(new_value)
						mod:set("enhanced_descriptions_enabled2", new_value)
					end,
					get = function()
						return mod:get("enhanced_descriptions_enabled2") or true
					end
					},
						--[+ ENHANCED DESCRIPTIONS - Nodes +]--
					{name = mod:localize("enhanced_descriptions_nodes_enabled"),
					setting_id = "enhanced_descriptions_nodes_enabled",
					default_value = true,
					type = "checkbox",
					description = mod:localize("enhanced_descriptions_nodes_enabled_description"),
					
					change = function(new_value)
						mod:set("enhanced_descriptions_nodes_enabled", new_value)
					end,
					get = function()
						return mod:get("enhanced_descriptions_nodes_enabled") or true
					end
					},
						--[+ ENHANCED DESCRIPTIONS - Penances +]--
					{name = mod:localize("enhanced_descriptions_penances_enabled"),
					setting_id = "enhanced_descriptions_penances_enabled",
					default_value = true,
					type = "checkbox",
					description = mod:localize("enhanced_descriptions_penances_enabled_description"),
					
					change = function(new_value)
						mod:set("enhanced_descriptions_penances_enabled", new_value)
					end,
					get = function()
						return mod:get("enhanced_descriptions_penances_enabled") or true
					end
					},
				},
			},
		}
	}
}

local color_options = {}
for i, color_name in ipairs(Color.list) do
	table.insert(color_options, {
		text = color_name,
		value = color_name
	})
end
table.sort(color_options, function(a, b)
	return a.text < b.text
end)

local function get_color_options()
	return table.clone(color_options)
end
local function create_option_set(typeName, defaultColour1)
	return {
		setting_id = typeName .."_colour",
		type = "group",
		sub_widgets = {
			{
				setting_id = typeName .."_text_colour",
				type = "dropdown",
				default_value = defaultColour1,
				options = get_color_options()
			},
		}
	}
end

-- default game text color: terminal_text_body

--[+Enhanced Descriptions+]--
table.insert(options.options.widgets, create_option_set("enhdesc", "terminal_text_body"))

--[+Main+]--
table.insert(options.options.widgets, create_option_set("combat_ability", "olive_drab"))
table.insert(options.options.widgets, create_option_set("health", "red"))
table.insert(options.options.widgets, create_option_set("peril", "ui_orange_dark"))
table.insert(options.options.widgets, create_option_set("stamina", "light_salmon"))
table.insert(options.options.widgets, create_option_set("toughness", "ui_difficulty_1"))
table.insert(options.options.widgets, create_option_set("coherency", "citadel_kindleflame"))

--[+Buffs+]--
table.insert(options.options.widgets, create_option_set("cleave", "player_slot_2_bright"))
table.insert(options.options.widgets, create_option_set("crit", "citadel_yriel_yellow"))
table.insert(options.options.widgets, create_option_set("damage", "citadel_jokaero_orange"))
table.insert(options.options.widgets, create_option_set("finesse", "dodger_blue"))
table.insert(options.options.widgets, create_option_set("hit_mass", "item_rarity_dark_2"))
table.insert(options.options.widgets, create_option_set("impact", "sea_green"))
table.insert(options.options.widgets, create_option_set("power", "steel_blue"))
table.insert(options.options.widgets, create_option_set("rending", "violet"))
table.insert(options.options.widgets, create_option_set("weakspot", "green_yellow"))

--[+Debuffs+]--
table.insert(options.options.widgets, create_option_set("bleed", "ui_zealot"))
table.insert(options.options.widgets, create_option_set("brittleness", "medium_orchid"))
table.insert(options.options.widgets, create_option_set("burn", "sienna"))
table.insert(options.options.widgets, create_option_set("corruption", "ui_corruption_medium"))
table.insert(options.options.widgets, create_option_set("electrocuted", "citadel_stormfang"))
table.insert(options.options.widgets, create_option_set("soulblaze", "ui_toughness_default"))
table.insert(options.options.widgets, create_option_set("stagger", "terminal_background_selected"))

--[+Psyker+]--
table.insert(options.options.widgets, create_option_set("class_psyker", "player_slot_4"))
table.insert(options.options.widgets, create_option_set("precision", "ui_psyker"))

--[+Ogryn+]--
table.insert(options.options.widgets, create_option_set("class_ogryn", "player_slot_3"))
table.insert(options.options.widgets, create_option_set("fnp", "light_coral"))
table.insert(options.options.widgets, create_option_set("luckyb", "orange"))
table.insert(options.options.widgets, create_option_set("trample", "forest_green"))

--[+Zealot+]--
table.insert(options.options.widgets, create_option_set("class_zealot", "player_slot_2"))
table.insert(options.options.widgets, create_option_set("fury", "hot_pink"))
table.insert(options.options.widgets, create_option_set("momentum", "ui_red_super_light"))
table.insert(options.options.widgets, create_option_set("stealth", "ui_grey_light"))

--[+Veteran+]--
table.insert(options.options.widgets, create_option_set("class_veteran", "player_slot_1"))
table.insert(options.options.widgets, create_option_set("focus", "dark_violet"))
table.insert(options.options.widgets, create_option_set("focust", "teal"))
table.insert(options.options.widgets, create_option_set("meleespec", "ui_hud_red_light"))
table.insert(options.options.widgets, create_option_set("rangedspec", "citadel_the_fang_grey"))

--[+Misc+]--
table.insert(options.options.widgets, create_option_set("note", "terminal_text_warning_dark"))
table.insert(options.options.widgets, create_option_set("numbers", "ui_hud_yellow_super_light"))
table.insert(options.options.widgets, create_option_set("variables", "ui_hud_yellow_super_light"))
table.insert(options.options.widgets, create_option_set("warning", "item_rarity_6"))
table.insert(options.options.widgets, create_option_set("talents", "ui_input_color"))

--[+Difficulty+]--
table.insert(options.options.widgets, create_option_set("sedition", "ui_difficulty_1"))
table.insert(options.options.widgets, create_option_set("uprising", "ui_difficulty_2"))
table.insert(options.options.widgets, create_option_set("malice", "ui_difficulty_3"))
table.insert(options.options.widgets, create_option_set("heresy", "ui_difficulty_4"))
table.insert(options.options.widgets, create_option_set("damnation", "ui_difficulty_5"))

--[+Penances+]--
table.insert(options.options.widgets, create_option_set("talents_penances", "forest_green"))


return options
