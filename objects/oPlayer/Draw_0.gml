/// @description Insert description here
// You can write your code in this editor

draw_self()

/*
OLD: based off of state
switch (state)
{
	case stateIdle:
		image_speed = 0;
		animateSprite(sPlayerIdle)
	break;
	case stateWalking:
		dir = point_direction(x, y, x + xMovement, y + yMovement)
		image_speed = 1; 
		animateSprite(sPlayerWalking)
	break;
	case stateLocked:
		image_speed = lockedSpeed
		animateSprite(lockedAnimation)	
	break;
}
*/

if xMovement != 0 or yMovement != 0
{
	// Update dir only if moving
	dir = point_direction(x, y, x + xMovement, y + yMovement)
	image_speed = 1;
	AnimateSprite(sPlayerWalking, dir)
}
else
{
	image_speed = 0;
	AnimateSprite(sPlayerIdle, dir)
}


