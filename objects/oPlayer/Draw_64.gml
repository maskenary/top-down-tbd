/// @description Insert description here
// You can write your code in this editor

if (distance_to_object(nearestInteractObject) <= interactDistance and nearestInteractObject.interactAvailable and state != stateLocked)
{
	var _x =  x - camera_get_view_x(view_camera[0]);
   var _y =  y - camera_get_view_y(view_camera[0]);
    _x *= display_get_gui_width() / camera_get_view_width(view_camera[0])
    _y *= display_get_gui_height() / camera_get_view_height(view_camera[0])
	scribble("[fnDialogue]!").draw(_x + 80,_y - 20)
}