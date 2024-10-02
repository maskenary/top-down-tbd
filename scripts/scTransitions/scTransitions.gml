// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.nextRoom = undefined
global.nextX = undefined
global.nextY = undefined

function InFinish()
{
	layer_sequence_destroy(self.elementID)
	ChangeRoom()
}

function OutFinish()
{
	layer_sequence_destroy(self.elementID)
	with (oPlayer) { state = stateIdle }
}

function Transition(_effect)
{	
	var _animationIn = undefined
	var _animationOut = undefined
	switch (_effect)
	{
		case "fade": {_animationIn = sqFadeIn; _animationOut = sqFadeOut}
	}
	
	 // Sequence moment runs OutFinish -> ChangeRoom when this finishes
	layer_sequence_create("Game", 0, 0, _animationIn)
	
	// Places sequence in the next room
	layer_set_target_room(global.nextRoom)
	layer_sequence_create("Game", 0, 0, _animationOut)
	layer_reset_target_room()
}

// Call this before Transition or ChangeRoom
function SetRoomTarget(_room, _x, _y)
{
	global.nextRoom = _room
	global.nextX = _x
	global.nextY = _y
}

function ChangeRoom()
{
	room_goto(global.nextRoom)
	oPlayer.x = global.nextX
	oPlayer.y = global.nextY
}


