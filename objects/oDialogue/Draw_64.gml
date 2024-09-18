/// @description Insert description here
// You can write your code in this editor

// Offsets are ALL MANUAL EXCEPT THE CENTERPOINT OF THE SCREEN (wtf is this shit) 

var _x = (display_get_gui_width()/2) - 600;
var _y = (display_get_gui_height()/2) + 100;

var _contentString = ChatterboxGetContentSpeech(chatterbox, 0)
var _speakerString = ChatterboxGetContentSpeaker(chatterbox, 0)
var _contentScribble = scribble(_contentString)
var _speakerScribble = scribble(_speakerString)
var _portraitSprite = GetSpeakerPortrait(_speakerString, ChatterboxGetContentSpeakerData(chatterbox, 0))

if (_speakerString == "Player")
{
	draw_sprite_ext(boxSprite, -1, _x, _y, 1, 1, 0, c_white, 1);
	_contentScribble.wrap(800)
	//_speakerScribble.draw(_x + 40, _y + 5)
	_contentScribble.draw(_x + 400, _y + 100, typist)
}
else 
{
	draw_sprite_ext(boxSprite, -1, _x+1300, _y, -1, 1, 0, c_white, 1);
	draw_sprite_ext(_portraitSprite, -1, _x+1000, _y+105, 4, 4, 0, c_white, 1); 
	_contentScribble.wrap(900)
	//_speakerScribble.draw(_x + 1000, _y + 5)
	_contentScribble.draw(_x + 100, _y + 100, typist)
}


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



