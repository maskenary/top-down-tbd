/// @description Insert description here
// You can write your code in this editor

state();

if ChatterboxIsStopped(chatterbox)
{
	with (oPlayer) { state = stateIdle; }
	show_debug_message("DESTROYED DIALOGUE BOX")
	instance_destroy(self)
}

