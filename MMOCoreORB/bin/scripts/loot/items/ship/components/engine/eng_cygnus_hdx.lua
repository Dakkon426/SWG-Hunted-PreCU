eng_cygnus_hdx = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/tangible/ship/components/engine/eng_cygnus_hdx.iff",
	craftingValues = {
		{"ship_component_engine_speed_maximum", 52.8, 94.7, 1},
		{"ship_component_engine_pitch_rate_maximum", 53.7, 80.3, 1},
		{"ship_component_engine_roll_rate_maximum", 53.7, 80.3, 1},
		{"ship_component_engine_yaw_rate_maximum", 53.7, 80.3, 1},
		{"ship_component_hitpoints", 1002.8, 1333.3, 1},
		{"ship_component_armor", 501.4, 666.7, 1},
		{"ship_component_energy_required", 2409, 1041, 0},
		{"ship_component_mass", 39445, 17066, 0},
		{"reverseengineeringlevel", 8, 8, 0},
	},

	customizationStringName = {},
	customizationValues = {}
}


addLootItemTemplate("eng_cygnus_hdx", eng_cygnus_hdx)
