/// @description Insert description here
// You can write your code in this editor

var _x = (display_get_gui_width()/2);
var _y = (display_get_gui_height()/2);
_y -= boxHeightScaled/2
draw_sprite_ext(boxSprite, 0, _x - (boxWidthScaled/2), _y, boxScale, boxScale, 0, c_white, 1)

var _totalTextWidth = (string_width_scribble(popupArray[0]) + textOffset) * array_length(popupArray)
var _textOffsetFromLeft = (boxWidthScaled - _totalTextWidth) / 2
_x -= boxWidthScaled //TODO

// Bring _y back to center to print text
_y += (boxHeightScaled/2)
_y -= string_height_scribble(popupArray[0]) 

for (var _i = 0; _i < selectionLength; _i += 1)
{
	var _string = popupArray[_i]
	var _stringScribble = scribble(_string)
	
	/*
	var _arrow = "> "
	var _arrowScribble = scribble(_arrow)
	_arrowScribble.blend(c_yellow, 1)
	var _arrowWidth = string_width_scribble(_arrow)
	
	Draw arrow > add arrow width to text > draw text
	*/
	
	if (_i == selectionIndex)
	{
		_stringScribble = scribble("[shake]"+_string)
		_stringScribble.blend(c_yellow, 1)
	}
	else
	{
		_stringScribble.blend(c_white, 1)
	}
	
	_stringScribble.align(fa_left, fa_top)
	_stringScribble.draw(_x, _y)
	
	_x += string_width_scribble(_string) + textOffset; // Spacing between
}
