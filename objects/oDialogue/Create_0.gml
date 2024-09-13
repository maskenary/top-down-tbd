/// @description Insert description here
// You can write your code in this editor

chatterbox = undefined
cooldown = 0.5;

function stateWriting()
{
	if (alarm[0] = -1)
	{
		if ChatterboxIsWaiting(chatterbox)
		{
			state = stateWaiting
		}
		else if ChatterboxGetOptionCount(chatterbox) > 0
		{
			state = stateOptions
		}
	}
	else
	{
		show_debug_message("in cooldown")
	}
}

function stateWaiting()
{
	show_debug_message("waiting")
	if keyboard_check(vk_space)
	{
		ChatterboxContinue(chatterbox);
		ChatterboxUpdate(chatterbox);
		state = stateWriting
		alarm[0] = game_get_speed(gamespeed_fps) * cooldown;
	}
}

function stateOptions()
{
	show_debug_message("options")
	var _index = undefined;
	if (keyboard_check_released(ord("1"))) _index = 0;
	if (keyboard_check_released(ord("2"))) _index = 1;
	if (keyboard_check_released(ord("3"))) _index = 2;
	if (keyboard_check_released(ord("4"))) _index = 3;
	//If we've pressed a button, select that option
	if (_index != undefined)
	{
		ChatterboxSelect(chatterbox, _index);
		ChatterboxUpdate(chatterbox);
		state = stateWriting
		alarm[0] = game_get_speed(gamespeed_fps) * cooldown;
	}
}
state = stateWriting
alarm[0] = game_get_speed(gamespeed_fps) * cooldown;

