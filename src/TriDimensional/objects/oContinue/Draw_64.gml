/// @description Insert description here
// You can write your code in this editor

if (Cmenu_control)
{
	for (var i = 0; i < Cmenu_items; i++)
	{
		var sprite = Cmenu[i];
		var xx = gui_width / 2;
		var yy = (gui_height / 4) * (i+1) + (Cmenu_itemheight * (i * 1.5));
		
		draw_sprite_ext(sprite,0,xx,yy,1,1,0,c_white,1);
	
	
	}
}