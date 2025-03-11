krayt_dragon_colossus = Creature:new {
	objectName = "@mob/creature_names:krayt_dragon_colossus",
	socialGroup = "krayt",
	faction = "",
	mobType = MOB_CARNIVORE,
	level = 420,
	chanceHit = 30.0,
	damageMin = 4250,
	damageMax = 10250,
	baseXp = 68549,
	baseHAM = 610000,
	baseHAMmax = 701000,
	armor = 3,
	resists = {195,195,195,195,165,195,195,195,-1},
	meatType = "meat_carnivore",
	meatAmount = 5000,
	hideType = "hide_bristley",
	hideAmount = 4950,
	boneType = "bone_mammal",
	boneAmount = 4905,
	milk = 0,
	tamingChance = 0,
	ferocity = 30,
	pvpBitmask = AGGRESSIVE + ATTACKABLE + ENEMY,
	creatureBitmask = PACK + KILLER + STALKER,
	optionsBitmask = AIENABLED,
	diet = CARNIVORE,
	scale = 4.05,

	templates = {"object/mobile/krayt_dragon_hue.iff"},
	hues = { 16, 17, 18, 19, 20, 21, 22, 23 },
	lootGroups = {
		{
			groups = {
				{group = "krayt_tissue_rare", chance = 5000000},
				{group = "krayt_pearls", chance = 5000000}
			},
			lootChance = 10000000
		},
		{
			groups = {
				{group = "weapons_all", chance = 10000000},
			},
			lootChance = 10000000
		}
	},

	-- Primary and secondary weapon should be different types (rifle/carbine, carbine/pistol, rifle/unarmed, etc)
	-- Unarmed should be put on secondary unless the mobile doesn't use weapons, in which case "unarmed" should be put primary and "none" as secondary
	primaryWeapon = "unarmed",
	secondaryWeapon = "none",
	conversationTemplate = "",

	-- primaryAttacks and secondaryAttacks should be separate skill groups specific to the weapon type listed in primaryWeapon and secondaryWeapon
	-- Use merge() to merge groups in creatureskills.lua together. If a weapon is set to "none", set the attacks variable to empty brackets
	primaryAttacks = { {"creatureareacombo","stateAccuracyBonus=100"}, {"creatureareaknockdown","stateAccuracyBonus=100"} },
	secondaryAttacks = { }
}

CreatureTemplates:addCreatureTemplate(krayt_dragon_colossus, "krayt_dragon_colossus")
