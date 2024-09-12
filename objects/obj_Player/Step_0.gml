/// @description Insert description here
// You can write your code in this editor

#region Movement
var x_direction = (keyboard_check(vk_right) or keyboard_check(ord("D"))) - (keyboard_check(vk_left) or keyboard_check(ord("A")))

var y_direction = (keyboard_check(vk_down) or keyboard_check(ord("S"))) - (keyboard_check(vk_up) or keyboard_check(ord("W")))

x_movement = x_direction * walk_speed;
y_movement = y_direction * walk_speed;

if (x_movement != 0) and (y_movement != 0) // normalize
{
	x_movement *= 0.707107;
	y_movement *= 0.707107;
}

if (place_meeting(x + x_movement, y, collision_objects)) 
{
	while (!place_meeting(x + sign(x_movement), y, collision_objects)) 
	{
		x += sign(x_movement);
	}
	x_movement = 0;
}

if (place_meeting(x, y + y_movement, collision_objects)) 
{
	while (!place_meeting(x, y + sign(y_movement), collision_objects)) 
	{
		y += sign(y_movement);
	}
	y_movement = 0;
}

x += x_movement
y += y_movement
#endregion

#region Movement Animation
var dir = point_direction(x, y, x_movement, y_movement);
switch (dir){
	case 0:
		sprite_index = spr_Player_WalkSide
	break;
}
#endregion
