/// @description Insert description here
// You can write your code in this editor
key_left = keyboard_check(ord("A"));
key_right = keyboard_check(ord("D"));
key_up = keyboard_check(ord("W"));
key_down = keyboard_check(ord("S"));

var xcam = camera_get_view_x(camera);
var ycam = camera_get_view_y(camera);

actualMoveSpeedx+=((key_right-key_left));
actualMoveSpeedy+=((key_down-key_up));

var _x = xcam+(actualMoveSpeedx/50);
var _y = ycam+(actualMoveSpeedy/50);

_x = clamp(_x,0,room_width);
_y = clamp(_y,0,room_height);

camera_set_view_pos(camera,_x,_y);

if ((key_right - key_left) == 0 and (key_up - key_down) == 0) 
{
	actualMoveSpeedx = 0;
	actualMoveSpeedy = 0;
}