bwing = ShipAgent:new {
	template = "bwing_tier1",
	pilotTemplate = "bomber_tier1",
	shipType = "fighter",

	experience = 120,

	lootChance = 0.204,
	lootRolls = 1,
	lootTable = "space_rebel_tier1",

	minCredits = 55,
	maxCredits = 110,

	aggressive = 0,

	spaceFaction = "rebel",
	alliedFactions = {"nym", "rebel"},
	enemyFactions = {"imperial", "blacksun"},
	imperialFactionReward = 2,
	rebelFactionReward = -4,

	color1 = 6,
	color2 = 11,
	texture = 3,
	formationLocation = 4,
	appearance = "rebel_pilot",

	tauntType = "rebel",
	tauntAttackChance = 0.1,
	tauntDefendChance = 0.05,
	tauntDieChance = 0.1,

	pvpBitmask = ATTACKABLE,
	shipBitmask = NONE,
	optionsBitmask = AIENABLED,

	customShipAiMap = "",

	conversationTemplate = "",
	conversationMobile = "",
	conversationMessage = "", --Too Far Message
}

ShipAgentTemplates:addShipAgentTemplate(bwing, "bwing")
