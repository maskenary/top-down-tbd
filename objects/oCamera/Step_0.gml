/// @description Insert description here
// You can write your code in this editor


var _xTo = player.x - camWidth/2
var _yTo = player.y - camHeight/2

_xTo = clamp(_xTo, 0, room_width - camWidth)
_yTo = clamp(_yTo, 0, room_height - camHeight)

camera_set_view_pos(camera, _xTo, _yTo);
