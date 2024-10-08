// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

global.nextRoom = undefined
global.nextX = undefined
global.nextY = undefined

function InFinish()
{
	layer_sequence_destroy(self.elementID)
	if global.nextRoom == rMainMenu
	{
		ChangeRoom(false)
	}
	else
	{
		ChangeRoom()
	}
}

function OutFinish()
{
	layer_sequence_destroy(self.elementID)
	if global.nextRoom != rMainMenu
	{
		with (oPlayer) { state = stateIdle; visible = true }
	}
}

function Transition(_effect)
{	
	with (oPlayer) { state = stateLocked }
	var _animationIn = undefined
	var _animationOut = undefined
	switch (_effect)
	{
		case "fade": {_animationIn = sqFadeIn; _animationOut = sqFadeOut}
	}
	
	 // Sequence moment runs InFinish -> ChangeRoom when this finishes
	layer_sequence_create("Game", 0, 0, _animationIn)
	
	// Places out sequence in the next room to run before switching
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

// Creates a new player instance at the next room and goes to it
function ChangeRoom(_playerVisible = true)
{
	layer_set_target_room(global.nextRoom)
	with (instance_create_layer(global.nextX, global.nextY, "Player", oPlayer))
	{
		global.player = self
		visible = _playerVisible
	}
	layer_reset_target_room()
	room_goto(global.nextRoom)
}


