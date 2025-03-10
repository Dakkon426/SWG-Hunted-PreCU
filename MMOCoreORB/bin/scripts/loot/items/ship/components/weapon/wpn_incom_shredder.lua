wpn_incom_shredder = {
	minimumLevel = 0,
	maximumLevel = -1,
	customObjectName = "",
	directObjectTemplate = "object/tangible/ship/components/weapon/wpn_incom_shredder.iff",
	craftingValues = {
		{"ship_component_weapon_damage_minimum", 239.4, 485.6, 1},
		{"ship_component_weapon_damage_maximum", 322, 653, 1},
		{"ship_component_weapon_effectiveness_shields", 536, 714, 3},
		{"ship_component_weapon_effectiveness_armor", 536, 714, 3},
		{"ship_component_weapon_energy_per_shot", 37.8, 13.2, 1},
		{"ship_component_weapon_refire_rate", 486, 364, 3},
		{"ship_component_hitpoints", 177, 235.5, 1},
		{"ship_component_armor", 88.5, 117.8, 1},
		{"ship_component_energy_required", 2962, 1038, 0},
		{"ship_component_mass", 2851, 999, 0},
		{"reverseengineeringlevel", 2, 2, 0},
	},

	customizationStringName = {},
	customizationValues = {}
}


addLootItemTemplate("wpn_incom_shredder", wpn_incom_shredder)
