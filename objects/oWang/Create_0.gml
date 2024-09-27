/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

interactAvailable = true;
walkingSprite = sWangWalking
idleSprite = sWangIdle

function execute()
{
	if (interactAvailable)
	{
		//StartDialogue("WangMeeting", "dialogue.yarn")
		//StartDialoguePopup(["Hello", "GOOD DAY"])
		StartCutscene(tlCutsceneTest)
		
		interactAvailable = false;
	}
}

