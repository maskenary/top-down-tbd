/// @description Insert description here
// You can write your code in this editor

// produce a text in descending order based on number of items in the menu array
// box the whole thing appropriately
// use a function(?) to determine whether to highlight a text or print it normally

var _x = x
var _y = y

for (var _i = 0; _i < selectionLength; _i += 1)
{
	var _string = menuArray[menuIndex][_i]
	var _stringScribble = scribble(_string)
	
	var _arrow = "> "
	var _arrowScribble = scribble(_arrow)
	_arrowScribble.blend(c_yellow, 1)
	var _arrowWidth = string_width_scribble(_arrow)
	
	if (_i == selectionIndex)
	{
		_arrowScribble.draw(_x, _y)
		_stringScribble = scribble("[shake]"+_string)
		_stringScribble.blend(c_yellow, 1)
		_stringScribble.draw(_x + _arrowWidth, _y)
	}
	else
	{
		_stringScribble.blend(c_white, 1)
		_stringScribble.draw(_x, _y)
	}
	_y += string_height_scribble(_string); // Spacing between
}
