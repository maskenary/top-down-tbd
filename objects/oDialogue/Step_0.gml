/// @description Insert description here
// You can write your code in this editor

state();

if ChatterboxIsStopped(chatterbox)
{
	instance_destroy(self)
	show_debug_message("DESTROYED DIALOGUE BOX")
}

