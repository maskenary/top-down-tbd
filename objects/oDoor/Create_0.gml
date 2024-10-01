/// @description Insert description here
// You can write your code in this editor

interactAvailable = true;

// Set these in creation code
toRoom = room;
toY = 0;
toX = 0;

function execute()
{
	ChangeRoom(toRoom, toX, toY, "fade")
}