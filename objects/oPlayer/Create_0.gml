/// @description Insert description here
// You can write your code in this editor

persistent = true;
image_speed = 0;
walkSpeed = 1.5
collisionTileId = layer_tilemap_get_id("TilesCollision");
collisionObjects = undefined;
interactObjects = [oNpc, oDoor];
nearestInteractObject = undefined
interactDistance = 5
xMovement = 0;
yMovement = 0;
dir = point_direction(x, y, x , y + 1)

lockedX = 0
lockedY = 0
lockedSpeed = 0

function setToPoint(_x = x, _y = y, _speed = 0)
{
	lockedX = _x
	lockedY = _y
	lockedSpeed = _speed
}

function updateCollisionObjects()
{
	collisionTileId = layer_tilemap_get_id("TilesCollision");
	collisionObjects = [oNpc, collisionTileId];
}

function updateNearestInteract()
{
	var _closest = interactObjects[0]
	var _closestDist = distance_to_object(_closest)
	
	for (var _i = 1; _i < array_length(interactObjects); _i++)
	{
		var _dist = distance_to_object(interactObjects[_i])
	     if (_dist < _closestDist and interactObjects[_i])  
		 {
	        _closest = interactObjects[_i]
	        _closestDist = _dist
	     }
	}
	nearestInteractObject = _closest;
}

function interact()
{
	if (distance_to_object(nearestInteractObject) < interactDistance and (keyboard_check(vk_space) or keyboard_check(vk_enter)))
	{
		if (variable_instance_exists(nearestInteractObject, "execute") and nearestInteractObject.interactAvailable)
		{
			with (nearestInteractObject) { execute() } // Interactable objects need this function 
		}
	}
}

function move()
{
	var _xDirection = (keyboard_check(vk_right) or keyboard_check(ord("D"))) - (keyboard_check(vk_left) or keyboard_check(ord("A")))

	var _yDirection = (keyboard_check(vk_down) or keyboard_check(ord("S"))) - (keyboard_check(vk_up) or keyboard_check(ord("W")))

	xMovement = _xDirection * walkSpeed;
	yMovement = _yDirection * walkSpeed;
	
	// Normalizes them
	if (xMovement != 0) and (yMovement != 0) 
	{
		xMovement *= 0.707107;
		yMovement *= 0.707107;
	}
	move_and_collide(xMovement, yMovement, collisionObjects)
}

function stateIdle()
{
	move();
	updateNearestInteract()
	interact();
	if (xMovement != 0 or yMovement != 0)
	{	
		state = stateWalking;
	}
}

function stateWalking()
{
	move();
	updateNearestInteract();
	interact();
	if (xMovement == 0 and yMovement == 0)
	{
		state = stateIdle;
	}
}

function stateLocked()
{
	var _movements = MoveToPoint(lockedX, lockedY, lockedSpeed)
	xMovement = _movements[0]
	yMovement = _movements[1]
}

state = stateIdle;


