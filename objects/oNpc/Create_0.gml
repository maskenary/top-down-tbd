/// @description Insert description here
// You can write your code in this editor

asset_add_tags(oNpc, "npc")

idleSprite = sPlayerIdle
walkingSprite = sPlayerWalking

xMovement = 0;
yMovement = 0;
dir = point_direction(x, y, x , y + 1)

pointX = 0
pointY = 0
moveSpeed = 0

interactAvailable = false;

function setToPoint(_x = x, _y = y, _speed = 0)
{
	pointX = _x
	pointY = _y
	moveSpeed = _speed
}
