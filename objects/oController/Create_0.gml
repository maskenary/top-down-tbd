/// @description Insert description here
// You can write your code in this editor

global.paused = false

function pause()
{
	global.paused = true
	instance_deactivate_all(true);
	instance_create_layer(0,0,"Game",oPauseMenu)
}

function unpause()
{
	show_debug_message("UNPAUSING")
	global.paused = false
	instance_activate_all()
	with (oPauseMenu) { instance_destroy(self) }
}