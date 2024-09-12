/// @description Insert description here
// You can write your code in this editor

walkSpeed = 1
collisionTileId = layer_tilemap_get_id(layer_get_id("TilesCollision"));
collisionObjects = [collisionTileId, oCollidables];
xMovement = 0;
yMovement = 0;
image_speed = 0;
image_index = 1;

enum STATES {
	IDLE,
	WALKING,
}
state = STATES.WALKING;

StartDialogue("Start", "dialoguetest.yarn")
