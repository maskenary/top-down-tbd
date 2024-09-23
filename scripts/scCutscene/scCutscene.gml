// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StartCutscene(_sequence, _x, _y)
{
	with (oPlayer) {state = stateLocked}
	with (instance_create_layer(0,0,0,oCutscene))
	{
		sequence = _sequence
		x = _x
		y = _y
	}
}

cutsceneDialogues =
{
	// Id for cutscene, broadcasted at start of sequences
	"1" : 
	// Array to iterate through
	[
		new DialogueStruct("WangMeeting", "dialogue.yarn"),
		new DialoguePopupStruct(["SUP MY BRO", "HOW YOU DOING?", "FINE THANK YOU?"], "Mr. Brown")
	],
}