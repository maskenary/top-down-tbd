/// @description Insert description here
// You can write your code in this editor

walkSpeed = 1
collisionTileId = layer_tilemap_get_id(layer_get_id("TilesCollision"));
collisionObjects = [collisionTileId, oCollidables];
xMovement = 0;
yMovement = 0;
image_speed = 0;
image_index = 1;
inAnimation = false;

function playAnimation(_sprite)
{
	if (inAnimation = false)
	{
		sprite_index = _sprite;
		image_speed = 1;
		image_index = 0;
		inAnimation = true;
	}
}

