/// @description Insert description here
// You can write your code in this editor

var _x = 100
var _y = 100

draw_text(_x,  _y, ChatterboxGetContent(chatterbox, 0))

if state = stateOptions
{
	var _i = 0;
	repeat(ChatterboxGetOptionCount(chatterbox))
    {
        var _string = ChatterboxGetOption(chatterbox, _i);
        draw_text(_x, _y - string_height(_string)*2, string(_i+1) + ") " + _string);
        _y += string_height(_string); // spacing between options
        ++_i; //next line index
    }
}