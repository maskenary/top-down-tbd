/// @description Insert description here
// You can write your code in this editor

nextRoom = undefined
nextX = undefined
nextY = undefined
animationIn = undefined
animationOut = undefined
activeIn = undefined
activeOut = undefined


function transition(_room, _x, _y, _animationIn = undefined, _animationOut = undefined)
{
	nextRoom = _room
	nextX = _x
	nextY = _y
	animationIn = _animationIn
	animationOut = _animationOut
	
	if animationOut != undefined
	{
		show_debug_message("ANIMATION OUT")
		activeOut = layer_sequence_create("Game", 0, 0, animationOut)
		state = stateTransitioningOut
	}
	else
	{
		switchRoom()
	}
}

function switchRoom()
{
	room_goto(nextRoom)
	oPlayer.x = nextX
	oPlayer.y = nextY
	if animationIn != undefined
	{
		show_debug_message("ANIMATION IN")
		activeIn = layer_sequence_create("Game", 0, 0, animationIn)
		state = stateTransitioningIn
	}
	else
	{
		with (oPlayer) { state = stateIdle }
		show_debug_message("BACK TO IDLE")
	}
}

function stateTransitioningIn()
{
	if activeIn != undefined and layer_sequence_is_finished(activeIn)
	{
		layer_sequence_destroy(activeIn)
		activeIn = undefined
		with (oPlayer) { state = stateIdle }
		state = stateWaiting
		show_debug_message("BACK TO IDLE")
	}
}

function stateTransitioningOut()
{
	if activeOut != undefined and layer_sequence_is_finished(activeOut)
	{
		layer_sequence_destroy(activeOut)
		activeOut = undefined
		switchRoom()
		show_debug_message("SWITCHING")
	}
}

function stateWaiting()
{
	
}

state = stateWaiting
