/// @description Insert description here
// You can write your code in this editor

walk_speed = 1
collision_tile_id = layer_tilemap_get_id(layer_get_id("Tiles_Collision"));
collision_objects = [collision_tile_id, obj_Collidables];
x_movement = 0;
y_movement = 0;
image_speed = 0;