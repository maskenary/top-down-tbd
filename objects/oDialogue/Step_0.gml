/// @description Insert description here
// You can write your code in this editor

if ChatterboxIsStopped(chatterbox)
{
	show_debug_message("stopped")
}
else if ChatterboxIsWaiting(chatterbox)
{
	if keyboard_check(vk_space)
	{
		ChatterboxContinue(chatterbox);
		ChatterboxUpdate();
	}
	show_debug_message("waiting")
}
else //waiting for options
{
	show_debug_message("waiting for options")
	var _index = undefined;
    if (keyboard_check_released(ord("1"))) _index = 0;
    if (keyboard_check_released(ord("2"))) _index = 1;
    if (keyboard_check_released(ord("3"))) _index = 2;
    if (keyboard_check_released(ord("4"))) _index = 3;
    //If we've pressed a button, select that option
    if (_index != undefined)
	{
		ChatterboxSelect(chatterbox, _index);
		ChatterboxUpdate();
	}
}