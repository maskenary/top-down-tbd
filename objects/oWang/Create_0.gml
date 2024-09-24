/// @description Insert description here
// You can write your code in this editor

image_speed = 0
image_index = 13

interactAvailable = true;
dialogueNode = "WangMeeting"

function execute()
{
	if (interactAvailable)
	{
		//StartDialogue(dialogueNode, "dialogue.yarn")
		//StartDialoguePopup(["Hello", "GOOD DAY"])
		StartCutscene(tlCutsceneTest)
		
		interactAvailable = false;
	}
}