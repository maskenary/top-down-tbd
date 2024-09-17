// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function ChangeRoom(_room, _x, _y)
{
	room_goto(_room)
	oPlayer.x = _x
	oPlayer.y = _y
}