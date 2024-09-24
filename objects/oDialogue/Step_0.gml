/// @description Insert description here
// You can write your code in this editor

state();

if ChatterboxIsStopped(chatterbox)
{
	if  global.cutsceneInProgress
	{
		timeline_running = true
	}
	else
	{
		with (oPlayer) { state = stateIdle; }
	}
	
	instance_destroy(self)
}

