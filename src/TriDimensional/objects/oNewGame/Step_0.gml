/// @description Control Menu

#region KeyboardCheck

if (NGmenu_control)
{

	if (keyboard_check_pressed(up))
	{
		ChangeMusicOrSound(1,0);
		
		NGmenu_cursor++;
		if (NGmenu_cursor >= NGmenu_items) NGmenu_cursor = 0;
	}
	
	if (keyboard_check_pressed(down))
	{
		ChangeMusicOrSound(1,0);

		NGmenu_cursor--;
		if (NGmenu_cursor < 0) NGmenu_cursor = NGmenu_items - 1;
	
	}
	
	if (keyboard_check_pressed(interact1))
	{
		ChangeMusicOrSound(1,1);
		NGmenu_committed = NGmenu_cursor;
		NGmenu_control = false;
		switch (NGmenu_committed)
		{
			case 1: 
			
				NGmenu_control = false;
				oCanGoBack.CanGoBack = false;
			
			break;
			case 0: 	
			
				NGmenu_control = false;
				oCanGoBack.CanGoBack = false;
				
			break;
		}
	}
}

if (NGmenu_committed = -1)
{
	NGmenu_y += (NGmenu_y_target_com_1 - NGmenu_y) / NGmenu_speed;
}

if (NGmenu_committed = 0)
{		
	NGmenu_y += (NGmenu_y_target_com0 - NGmenu_y) / NGmenu_speed;
	NGmenu_Alpha += (NGmenu_AlphaTarget - NGmenu_Alpha) / NGmenu_speed;
}
if (NGmenu_committed = 1)
{
	NGmenu_y += (NGmenu_y_target_com1 - NGmenu_y) / NGmenu_speed;
	NGmenu_Alpha += (NGmenu_AlphaTarget - NGmenu_Alpha) / NGmenu_speed;
}

if (NGmenu_committed = 0) && (NGmenu_y < (NGgui_height / 4) + 3)
{
	// executa após mover
	// custom game
}

if (NGmenu_committed = 1) && (NGmenu_y < ((NGgui_height / 4) + (NGmenu_itemheight * 1.5)) + 3)
{
	// executa apos mover
	// story mode
}
	
#endregion


