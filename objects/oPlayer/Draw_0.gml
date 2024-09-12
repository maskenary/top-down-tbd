/// @description Insert description here
// You can write your code in this editor

draw_self()
#region Movement Animation

if (xMovement > 0)
{
	playAnimation(sPlayerSide)
	image_xscale = 1;
}
else if (xMovement < 0)
{
	playAnimation(sPlayerSide)
	image_xscale = -1;
}
else if (yMovement > 0)
{
	playAnimation(sPlayerDown)
}
else if (yMovement < 0)
{
	playAnimation(sPlayerUp)
}
else 
{
	image_index = 1;
	image_speed = 0;
	inAnimation = false;
}
#endregion