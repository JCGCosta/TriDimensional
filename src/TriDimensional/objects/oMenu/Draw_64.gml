/// @description Insert description here
// You can write your code in this editor
for (var i = 0; i < menu_items; i++)
{
	var sprite = menu[i];

	var xx = menu_x;
	var yy = menu_y - (menu_itemheight * (i * 1.5)) + (gui_height / 10);

	if (hasSave)
	{
		draw_sprite_ext(sprite,0,xx,yy,3,3,0,c_white,1);
	}
	else if (i = 2)
	{
		draw_sprite_ext(sprite,2,xx,yy,3,3,0,c_white,1);
	}
	else
	{
		draw_sprite_ext(sprite,0,xx,yy,3,3,0,c_white,1);
	}
	
	if (menu_cursor == i)
	{
		draw_sprite_ext(sprite,1,xx,yy,3,3,0,c_white,1);
	}
}