// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function AnimateSprite(_animationSprite, _dir)
{
	if sprite_index != _animationSprite{ sprite_index = _animationSprite }
	var _cardinalDirection = round(_dir/90);
	if _cardinalDirection > 3 { _cardinalDirection = 0; }
	var _cycleLength =  sprite_get_number(sprite_index) / 4
	if (image_index > (_cycleLength * _cardinalDirection) + (_cycleLength - 0.01))
	{
		image_index = _cycleLength * _cardinalDirection
	}
	if (image_index < (_cycleLength * _cardinalDirection))
	{
		image_index = _cycleLength * _cardinalDirection
	}
}

function MoveToPoint(_pointX, _pointY, _speed)
{
	var _xDirection = sign(_pointX - x)
	var _yDirection = sign(_pointY - y)

	var _xMovement = _xDirection * _speed;
	var _yMovement = _yDirection * _speed;
	
	if (_xMovement != 0) and (_yMovement != 0)
	{
		_xMovement *= 0.707107;
		_yMovement *= 0.707107;
	}
	
	x += _xMovement
	y += _yMovement
	
	// Avoids stuttering when reaching the point
	if ((x > _pointX-1 and x < _pointX+1) and (y > _pointY-1 and y < _pointY+1))
	{
		x = _pointX
		y = _pointY
	}
	return [_xMovement, _yMovement]
}

