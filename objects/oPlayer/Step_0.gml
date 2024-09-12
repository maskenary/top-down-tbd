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

if (place_meeting(x + xMovement, y, collisionObjects)) 
{
	while (!place_meeting(x + sign(xMovement), y, collisionObjects)) 
	{
		x += sign(xMovement);
	}
	xMovement = 0;
}

if (place_meeting(x, y + yMovement, collisionObjects)) 
{
	while (!place_meeting(x, y + sign(yMovement), collisionObjects)) 
	{
		y += sign(yMovement);
	}
	yMovement = 0;
}

x += xMovement
y += yMovement

#endregion


