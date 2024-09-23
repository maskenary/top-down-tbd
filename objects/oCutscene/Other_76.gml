/// @description Insert description here
// You can write your code in this editor

 switch (event_data[? "message"])
 {
	 case "dialogue":
		pause()
		dialogue()
		cutsceneDialogueIndex++
	 break;
	 case "end":
		with (oPlayer) { state = stateIdle; }
		instance_destroy(self)
	 break;
}