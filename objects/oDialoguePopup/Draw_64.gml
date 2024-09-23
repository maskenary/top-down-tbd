/// @description Insert description here
// You can write your code in this editor

var _x = (display_get_gui_width()/2);
var _y = (display_get_gui_height());

draw_sprite_ext(boxSprite, 0, _x - boxWidthScaled/2, _y - boxHeightScaled - boxOffsetFromBottom, boxScale, boxScale, 0, c_white, 1)


if (speaker != undefined)
{
	var _ySpeaker = _y - boxHeightScaled - boxOffsetFromBottom + textOffsetFromTop
	PrintSpeaker(speaker, _x, _ySpeaker)
	var _yContent = _ySpeaker + string_height_scribble(speaker) + contentOffsetFromSpeaker
	PrintContent(content[contentIndex], wrapWidth, _x, _yContent, typist)
}
else 
{
	var _yContent = _y - (boxHeightScaled - boxOffsetFromBottom + textOffsetFromTop) + string_height_scribble("[fnDialogueSpeaker]X") + contentOffsetFromSpeaker
	PrintContent(content[contentIndex], wrapWidth, _x, _yContent, typist) 
}

var _yArrow = _y - boxOffsetFromBottom - 50
if (state = stateWaiting)
{
	PrintArrow(_x, _yArrow)
}

