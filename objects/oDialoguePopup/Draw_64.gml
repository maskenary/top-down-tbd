/// @description Insert description here
// You can write your code in this editor

var _x = (display_get_gui_width()/2);
var _y = (display_get_gui_height());

draw_sprite_ext(boxSprite, 0, _x - boxWidthScaled/2, _y - boxHeightScaled - boxOffsetFromBottom, boxScale, boxScale, 0, c_white, 1)

if (speaker != undefined)
{
	var _yOffset = boxHeightScaled - boxOffsetFromBottom + textOffsetFromTop + contentOffsetFromSpeaker
	PrintSpeaker(speaker, _x, _y, 0, _yOffset)
	
}

var _yOffset = boxHeightScaled - boxOffsetFromBottom + textOffsetFromTop + contentOffsetFromSpeaker
if (speaker != undefined) { _yOffset -= string_height_scribble(speaker) }
PrintContent(content[contentIndex], wrapWidth, _x, _y, 0, _yOffset, typist)

if (state = stateWaiting)
{
	PrintArrow(_x, _y, 0, boxOffsetFromBottom - 50)
}

