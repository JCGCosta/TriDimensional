/// @description Insert description here

for (var i = 0; i < NGmenu_items; i++)
{
	var sprite = NGmenu[i];
	
	var xx = NGmenu_x;
	var yy = NGmenu_y - (NGmenu_itemheight * (i * 1.5)) + (NGgui_height / 10);
	
	if (NGmenu_committed = -1)
	{
		draw_sprite_ext(sprite,0,xx,yy,3,3,0,c_white,1);
	}
	else if (NGmenu_committed = 0)
	{
		draw_sprite_ext(sprite,0,xx,yy,3,3,0,c_white,NGmenu_Alpha);
	}
	else if (NGmenu_committed = 1)
	{
		draw_sprite_ext(sprite,0,xx,yy,3,3,0,c_white,NGmenu_Alpha);	
	}
		
	if (NGmenu_cursor == i)
	{
		draw_sprite_ext(sprite,1,xx,yy,3,3,0,c_white,1);
	}
}

if (NGmenu_committed = 0) && (NGmenu_y < 219)
{
	// executa após mover
	// custom game
	SlideTransition(TRANS_MODE.GOTO, rBattle);
}

if (NGmenu_committed = 1) && (NGmenu_y < 300)
{
	// executa apos mover
	// story mode
	SlideTransition(TRANS_MODE.GOTO, rBattle);
}
