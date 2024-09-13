/// @description Insert description here
// You can write your code in this editor

walkSpeed = 1
collisionTileId = layer_tilemap_get_id(layer_get_id("TilesCollision"));
collisionObjects = [collisionTileId, oCollidables];
xMovement = 0;
yMovement = 0;
dir = point_direction(x, y, x , y + 1)

enum PLAYERSTATES 
{
	IDLE,
	WALKING,
}
state = PLAYERSTATES.IDLE;

StartDialogue("Start", "dialoguetest.yarn")

function move()
{
	var _xDirection = (keyboard_check(vk_right) or keyboard_check(ord("D"))) - (keyboard_check(vk_left) or keyboard_check(ord("A")))

	var _yDirection = (keyboard_check(vk_down) or keyboard_check(ord("S"))) - (keyboard_check(vk_up) or keyboard_check(ord("W")))

	xMovement = _xDirection * walkSpeed;
	yMovement = _yDirection * walkSpeed;

	if (xMovement != 0) and (yMovement != 0) // normalize
	{
		xMovement *= 0.707107;
		yMovement *= 0.707107;
	}
	move_and_collide(xMovement, yMovement, collisionObjects)
}

/*
with (instance_create_depth(x, y, 0, oCape))
{
	player = other;
}
*/

function animateSprite(_animationSprite)
{
	if sprite_index != _animationSprite{ sprite_index = _animationSprite }
	var _cardinalDirection = round(dir/90);
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
