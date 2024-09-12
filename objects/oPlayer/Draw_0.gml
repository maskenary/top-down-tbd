/// @description Insert description here
// You can write your code in this editor

draw_self()
#region Movement Animation

switch (state)
{
	case PLAYERSTATES.IDLE:
		image_index = 1;
		image_speed = 0;
	break;
	case PLAYERSTATES.WALKING:
		var _dir = point_direction(x, y, x + xMovement, y + yMovement)
		switch (_dir)
		{
			case 0: sprite_index = sPlayerSide; image_xscale = 1; image_speed = 1; break;
			case 45: sprite_index = sPlayerSide; image_xscale = 1; image_speed = 1; break;
			case 90: sprite_index = sPlayerUp; image_speed = 1; break;
			case 135: sprite_index = sPlayerSide; image_xscale = -1; image_speed = 1; break;
			case 180: sprite_index = sPlayerSide; image_xscale = -1; image_speed = 1; break;
			case 225: sprite_index = sPlayerSide; image_xscale = -1; image_speed = 1; break;
			case 270: sprite_index = sPlayerDown; image_speed = 1; break;
			case 315: sprite_index = sPlayerSide; image_xscale = 1; image_speed = 1; break;
		}
		show_debug_message(_dir)
	break;
}

#endregion