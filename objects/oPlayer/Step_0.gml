/// @description Insert description here
// You can write your code in this editor

switch (state)
{
	case PLAYERSTATES.IDLE:
		move();
		if (xMovement != 0 or yMovement != 0)
		{	
			state = PLAYERSTATES.WALKING;
		}
	break;
	case PLAYERSTATES.WALKING:
		move();
		if (xMovement == 0 and yMovement == 0)
		{
			state = PLAYERSTATES.IDLE;
		}
	break;
}


