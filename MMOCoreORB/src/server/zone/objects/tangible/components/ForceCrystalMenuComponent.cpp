/*
 * ForceCrystalMenuComponent.cpp
 */

#include "ForceCrystalMenuComponent.h"
#include "server/zone/objects/creature/CreatureObject.h"
#include "server/zone/objects/scene/SceneObject.h"
#include "server/zone/packets/object/ObjectMenuResponse.h"
#include "server/zone/ZoneServer.h"

// Constants for screenplay states
const String VILLAGE_JEDI_PROGRESSION_SCREEN_PLAY_STATE_STRING = "VillageJediProgression";
const int VILLAGE_JEDI_PROGRESSION_HAS_VILLAGE_ACCESS = 4;

void ForceCrystalMenuComponent::fillObjectMenuResponse(SceneObject* sceneObject, ObjectMenuResponse* menuResponse, CreatureObject* player) const {

	TangibleObjectMenuComponent::fillObjectMenuResponse(sceneObject, menuResponse, player);

	menuResponse->addRadialMenuItem(20, 3, "@quest/force_sensitive/intro:crystal_journal"); // Display Journal
	menuResponse->addRadialMenuItem(21, 3, "Unlock Force Skills"); // Unlock Force Skills option
}

int ForceCrystalMenuComponent::handleObjectMenuSelect(SceneObject* sceneObject, CreatureObject* creature, byte selectedID) const {
	if (selectedID == 20) {
		creature->sendExecuteConsoleCommand("/ui action questJournal");
		return 0;
	}
	
	if (selectedID == 21) {
		// Check if the player has village access first
		uint64 state = creature->getScreenPlayState(VILLAGE_JEDI_PROGRESSION_SCREEN_PLAY_STATE_STRING);
		bool hasVillageAccess = (state & VILLAGE_JEDI_PROGRESSION_HAS_VILLAGE_ACCESS) == VILLAGE_JEDI_PROGRESSION_HAS_VILLAGE_ACCESS;
		
		if (!hasVillageAccess) {
			creature->sendSystemMessage("You must first complete the necessary quests to access the Village before unlocking Force Sensitive skills.");
			return 0;
		}
		
		// Handle unlocking force skills branches for training (not directly granting skills)
		creature->sendSystemMessage("Beginning Force Sensitivity training...");
		
		// Force Sensitive branches with human-readable names
		struct BranchInfo {
			const char* id;
			const char* name;
		};
		
		BranchInfo branches[] = {
			// Combat Prowess branch
			{"force_sensitive_combat_prowess_novice", "Combat Prowess"},
			{"force_sensitive_combat_prowess_ranged_accuracy", "Ranged Accuracy"},
			{"force_sensitive_combat_prowess_ranged_speed", "Ranged Speed"},
			{"force_sensitive_combat_prowess_melee_accuracy", "Melee Accuracy"},
			{"force_sensitive_combat_prowess_melee_speed", "Melee Speed"},
			
			// Enhanced Reflexes branch
			{"force_sensitive_enhanced_reflexes_novice", "Enhanced Reflexes"},
			{"force_sensitive_enhanced_reflexes_ranged_defense", "Ranged Defense"},
			{"force_sensitive_enhanced_reflexes_melee_defense", "Melee Defense"},
			{"force_sensitive_enhanced_reflexes_vehicle_control", "Vehicle Control"},
			{"force_sensitive_enhanced_reflexes_survival", "Survival"},
			
			// Heightened Senses branch
			{"force_sensitive_heightened_senses_novice", "Heightened Senses"},
			{"force_sensitive_heightened_senses_healing", "Healing"},
			{"force_sensitive_heightened_senses_surveying", "Surveying"},
			{"force_sensitive_heightened_senses_persuasion", "Persuasion"},
			{"force_sensitive_heightened_senses_luck", "Luck"},
			
			// Crafting Mastery branch
			{"force_sensitive_crafting_mastery_novice", "Crafting Mastery"},
			{"force_sensitive_crafting_mastery_experimentation", "Experimentation"},
			{"force_sensitive_crafting_mastery_assembly", "Assembly"},
			{"force_sensitive_crafting_mastery_repair", "Repair"},
			{"force_sensitive_crafting_mastery_technique", "Technique"}
		};
		
		int numBranches = sizeof(branches) / sizeof(branches[0]);
		
		// Unlock each branch for training
		for (int i = 0; i < numBranches; i++) {
			// Set the screen play state to indicate the branch is unlocked
			creature->setScreenPlayState("VillageUnlockScreenPlay:" + String(branches[i].id), 2);
			
			// Send a clear text message about unlocking the branch
			creature->sendSystemMessage("You have unlocked the Force Sensitive branch: " + String(branches[i].name));
		}
		
		creature->sendSystemMessage("Force Sensitivity training complete. You may now train Force Sensitive skills at a trainer.");
		return 0;
	}
	
	return 0;
}
