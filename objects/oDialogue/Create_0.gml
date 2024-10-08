/// @description Insert description here
// You can write your code in this editor

if global.currentCutscene != undefined
{
	PauseCutscene()
}

chatterbox = undefined

boxScale = 6
boxSprite = sBlackBoxDialogue
boxWidthScaled = sprite_get_width(boxSprite) * boxScale
boxHeightScaled = sprite_get_height(boxSprite) *boxScale

wrapWidth = 700
boxOffsetFromBottom = 30
textOffsetFromTop = 20
contentOffsetFromSpeaker = 20

typist = scribble_typist();
typist.in(1.5, 10);

function stateWriting()
{
	if keyboard_check_released(vk_space) or keyboard_check_released(vk_enter) { typist.skip() }
	
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
	// TBD if this even exists
}
state = stateWriting

