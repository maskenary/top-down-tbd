/// @description Insert description here
// You can write your code in this editor

state();

if ChatterboxIsStopped(chatterbox)
{
	with (oPlayer) { state = stateIdle; }
	instance_destroy(self)
}

