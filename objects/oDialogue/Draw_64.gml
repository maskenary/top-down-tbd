/// @description Insert description here
// You can write your code in this editor

// Offsets are ALL MANUAL EXCEPT THE CENTERPOINT OF THE SCREEN (wtf is this shit) 

var _x = (display_get_gui_width()/2);
var _y = (display_get_gui_height());

draw_sprite_ext(boxSprite, 0, _x - boxWidthScaled/2, _y - boxHeightScaled - 30, boxScale, boxScale, 0, c_white, 1)

var _contentString = ChatterboxGetContentSpeech(chatterbox, 0)
var _speakerString = ChatterboxGetContentSpeaker(chatterbox, 0)
var _contentScribble = scribble(_contentString)
var _speakerScribble = scribble(_speakerString)
var _portraitSprite = GetSpeakerPortrait(_speakerString, ChatterboxGetContentSpeakerData(chatterbox, 0))

_contentScribble.wrap(1000)
_contentScribble.align(fa_middle, fa_center)
_contentScribble.draw(_x, _y - boxHeightScaled/2, typist)


if state = stateOptions
{
	/*
	var _i = 0;
	repeat(ChatterboxGetOptionCount(chatterbox))
    {
        var _string = scribble(string(_i+1) + ") " + ChatterboxGetOption(chatterbox, _i));
        _string.draw(_x + 40, _y + 300 - string_height_scribble(_string)*ChatterboxGetOptionCount(chatterbox));
        _y += string_height_scribble(_string); // spacing between options
        ++_i; //next line index
    }
	*/
}



