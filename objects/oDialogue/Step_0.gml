/// @description Insert description here
// You can write your code in this editor

state();

if ChatterboxIsStopped(chatterbox)
{
	if global.currentCutscene != undefined
	{
		ResumeCutscene()
	}
	else
	{
		with (oPlayer) { state = stateIdle; }
	}
	
	instance_destroy(self)
}

