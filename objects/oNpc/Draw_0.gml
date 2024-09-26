/// @description Insert description here
// You can write your code in this editor

if xMovement != 0 or yMovement != 0
{
	// Update dir only if moving
	dir = point_direction(x, y, x + xMovement, y + yMovement)
	image_speed = 1;
	AnimateSprite(walkingSprite, dir)
	
}
else
{
	image_speed = 0;
	AnimateSprite(idleSprite, dir)
}
