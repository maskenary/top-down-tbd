/// @description Insert description here
// You can write your code in this editor

var _x = (display_get_gui_width()/2);
var _y = (display_get_gui_height());

draw_sprite_ext(boxSprite, 0, _x - boxWidthScaled/2, _y - boxHeightScaled - boxOffsetFromBottom, boxScale, boxScale, 0, c_white, 1)

var _content = ChatterboxGetContentSpeech(chatterbox, 0)
var _speaker = ChatterboxGetContentSpeaker(chatterbox, 0)
//var _portraitSprite = GetSpeakerPortrait(_speakerString, ChatterboxGetContentSpeakerData(chatterbox, 0))

var _yOffset = boxHeightScaled - boxOffsetFromBottom + textOffsetFromTop + contentOffsetFromSpeaker
PrintSpeaker(_speaker, _x, _y, 0, _yOffset)

PrintContent(_content, wrapWidth, _x, _y, 0, _yOffset - string_height_scribble(_speaker), typist)

if (state = stateWaiting)
{
	PrintArrow(_x, _y, 0, boxOffsetFromBottom - 50)
}

