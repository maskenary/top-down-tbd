/// @description Insert description here
// You can write your code in this editor

draw_self()


switch (state)
{
	case PLAYERSTATES.IDLE:
		image_speed = 0;
		animateSprite(sPlayerIdle)	
	break;
	case PLAYERSTATES.WALKING:
		dir = point_direction(x, y, x + xMovement, y + yMovement)
		animateSprite(sPlayerWalking)
		image_speed = 1; 
	break;
}
show_debug_message("PLAYER INDEX: " + string(image_index))