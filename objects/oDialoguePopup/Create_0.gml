/// @description Insert description here
// You can write your code in this editor

parentCutscene = undefined

// Set these in the script that creates this
content = []
speaker = undefined

contentIndex = 0

cooldown = 0.5;
textFade = 10;
textSpeed = 1.5;

boxScale = 6
boxSprite = sBlackBoxDialogue
boxWidthScaled = sprite_get_width(boxSprite) * boxScale
boxHeightScaled = sprite_get_height(boxSprite) *boxScale

wrapWidth = 700
boxOffsetFromBottom = 30
textOffsetFromTop = 20
contentOffsetFromSpeaker = 20

typist = scribble_typist();
typist.in(textSpeed, textFade);

function stateWriting()
{
	if (typist.get_state() == 1)
	{
		state = stateWaiting
	}
}

function stateWaiting()
{
	if keyboard_check_released(vk_space) or keyboard_check_released(vk_enter)
	{
		if (contentIndex + 1 > array_length(content) - 1)
		{
			with (oPlayer) { state = stateIdle; }
			instance_destroy(self)
		}
		else
		{
			contentIndex++
		}
	}
}

state = stateWriting

