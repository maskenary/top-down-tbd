/// @description Insert description here
// You can write your code in this editor

state();

if ChatterboxIsStopped(chatterbox)
{
	with (oPlayer) { state = stateIdle; }
	instance_destroy(self)
}

if (mouse_check_button(1)){show_debug_message(mouse_x)}

