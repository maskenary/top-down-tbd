/// @description Insert description here
// You can write your code in this editor

// Offsets are manually set from a top-left origin point in the center of the screen (wtf is this shit) 

var _x = (display_get_gui_width()/2) - 400;
var _y = (display_get_gui_height()/2) + 100;
draw_sprite_ext(boxSprite, -1, _x, _y, 1, 1, 0, c_white, 1);
	
if (ChatterboxGetContentSpeaker(chatterbox, 0) == "Player")
{
	scribble("[fnDialogue]"+ChatterboxGetContentSpeech(chatterbox, 0)).draw(_x + 400, _y + 100, typist)
	scribble("[fnDialogue]Player").draw(_x + 40, _y + 5)
}
else 
{
	// Offsets for NPCs
	scribble("[fnDialogue]"+ChatterboxGetContentSpeech(chatterbox, 0)).draw(_x + 40, _y + 100, typist)
	scribble("[fnDialogue]"+ChatterboxGetContentSpeaker(chatterbox, 0)).draw(_x + 40, _y + 5)
}


if state = stateOptions
{
	var _i = 0;
	repeat(ChatterboxGetOptionCount(chatterbox))
    {
        var _string = ChatterboxGetOption(chatterbox, _i);
        scribble("[fnDialogue]" + string(_i+1) + ") " + _string).draw(_x + 40, _y + 300 - string_height_scribble("[fnDialogue]"+_string)*ChatterboxGetOptionCount(chatterbox));
        _y += string_height_scribble("[fnDialogue]"+_string); // spacing between options
        ++_i; //next line index
    }
}



