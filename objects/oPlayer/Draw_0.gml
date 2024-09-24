/// @description Insert description here
// You can write your code in this editor

draw_self()


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
		animateSprite(manualAnimation)	
	break;
}

