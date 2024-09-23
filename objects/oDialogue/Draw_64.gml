/// @description Insert description here
// You can write your code in this editor

var _x = (display_get_gui_width()/2);
var _y = (display_get_gui_height());

draw_sprite_ext(boxSprite, 0, _x - boxWidthScaled/2, _y - boxHeightScaled - boxOffsetFromBottom, boxScale, boxScale, 0, c_white, 1)

var _content = ChatterboxGetContentSpeech(chatterbox, 0)
var _speaker = ChatterboxGetContentSpeaker(chatterbox, 0)
//var _portraitSprite = GetSpeakerPortrait(_speakerString, ChatterboxGetContentSpeakerData(chatterbox, 0))

// Top of the box >
var _ySpeaker = _y - boxHeightScaled - boxOffsetFromBottom + textOffsetFromTop

PrintSpeaker(_speaker, _x, _ySpeaker)

var _yContent = _ySpeaker + string_height_scribble(_speaker) + contentOffsetFromSpeaker

PrintContent(_content, wrapWidth, _x, _yContent, typist)

var _yArrow = _y - boxOffsetFromBottom - 50
if (state = stateWaiting)
{
	PrintArrow(_x, _yArrow)
}

