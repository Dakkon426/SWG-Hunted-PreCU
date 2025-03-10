spacestation_corellia = ShipAgent:new {
	template = "spacestation_corellia",
	shipType = "capital",

	lootChance = 0,
	lootRolls = 0,
	lootTable = "space_civilian_tier1",

	minCredits = 791,
	maxCredits = 1300,

	aggressive = 0,

	spaceFaction = "station",
	appearance = "spacestation",
	tauntAttackChance = 0.1,
	tauntDefendChance = 0.05,
	tauntDieChance = 0.1,

	pvpBitmask = NONE,
	shipBitmask = NONE,
	optionsBitmask = AIENABLED + INVULNERABLE,

	customShipAiMap = "spaceStations",

	conversationTemplate = "spacestation_corellia_convotemplate",
	conversationMobile = "object/mobile/shared_space_comm_station_corellia.iff",
	conversationMessage = "@conversation/station_corellia:s_bf5b2480", --Too Far Message
}

ShipAgentTemplates:addShipAgentTemplate(spacestation_corellia, "spacestation_corellia")