/// @description Insert description here
// You can write your code in this editor

chatterbox = undefined
cooldown = 0.5;
textFade = 10;
textSpeed = 1;

boxSprite = sDialogueBox

scribble_font_set_default("fnDialogue");
typist = scribble_typist();
typist.in(textSpeed, textFade);

function stateWriting()
{
	if (typist.get_state() == 1)
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
		show_debug_message(typist.get_state())
	}
}

function stateWaiting()
{
	if keyboard_check_released(vk_space) or keyboard_check_released(vk_enter)
	{
		ChatterboxContinue(chatterbox);
		ChatterboxUpdate(chatterbox);
		state = stateWriting
	}
}

function stateOptions()
{
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
	}
}
state = stateWriting

