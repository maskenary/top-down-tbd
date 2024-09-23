/// @description Insert description here
// You can write your code in this editor

state();

if ChatterboxIsStopped(chatterbox)
{
	if parentCutscene != undefined 
	{
		parentCutscene.resume()
	}
	else
	{
		with (oPlayer) { state = stateIdle; }
	}
	
	instance_destroy(self)
}

