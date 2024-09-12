/// @description Insert description here
// You can write your code in this editor

#region Movement
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

if (xMovement != 0 or yMovement != 0)
{
	if (state = STATES.IDLE)
	{
		image_index = 0;
	}
	state = STATES.WALKING;
}
else
{
	state = STATES.IDLE;
}
#endregion


