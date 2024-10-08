/// @description Insert description here
// You can write your code in this editor

var _x = (display_get_gui_width()/2);
var _y = (display_get_gui_height()/2);
_y -= boxHeightScaled/2
draw_sprite_ext(boxSprite, 0, _x - (boxWidthScaled/2), _y, boxScale, boxScale, 0, c_white, 1)

// After drawing the box, bring _y back to center and go upwards its half of the vertical offset to print title
_y += (boxHeightScaled/2)
_y -= textVerticalOffset/2
_y -= string_height_scribble(popupTitle) 

// Print centered title and move _x back to center 
var _titleWidth = string_width_scribble(popupTitle)
_x -= _titleWidth/2 
scribble(popupTitle).draw(_x, _y)
_x += _titleWidth/2 

// Need to loop through since width isnt same for every item like height is
var _totalTextWidth = 0
for (var _i=0; _i < array_length(popupArray); _i++)
{
	_totalTextWidth += (string_width_scribble(popupArray[_i]) + textHorizontalOffset)
}

// Set _x to middle left and add the offset to center it
var _textOffsetFromLeft = (boxWidthScaled - _totalTextWidth) / 2
_x -= boxWidthScaled/2 
_x += _textOffsetFromLeft

// Move _y to lower half of vertical offset to print popup text
_y += string_height_scribble(popupTitle) 
_y += textVerticalOffset


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
	
	_x += string_width_scribble(_string) + textHorizontalOffset; // Spacing between
}

