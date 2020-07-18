/// @description Control Menu
if (menu_control)
{
	#region KeyboardCheck
	
	if (keyboard_check_pressed(up))
	{
		ChangeMusicOrSound(1,0);
		if (hasSave)
		{
			menu_cursor++;
			if (menu_cursor >= menu_items) menu_cursor = 0;
		}
		else if (menu_cursor = 1)
		{
			menu_cursor = menu_cursor + 2;
			if (menu_cursor >= menu_items) menu_cursor = 0;
		}
		else
		{
			menu_cursor++;
			if (menu_cursor >= menu_items) menu_cursor = 0;
		}
	}
	
	if (keyboard_check_pressed(down))
	{
		ChangeMusicOrSound(1,0);
		if (hasSave)
		{
			menu_cursor--;
			if (menu_cursor < 0) menu_cursor = menu_items - 1;
		}
		else if (menu_cursor = 3)
		{
			menu_cursor = menu_cursor - 2;
			if (menu_cursor < 0) menu_cursor = menu_items - 1;
		}
		else
		{
			menu_cursor--;
			if (menu_cursor < 0) menu_cursor = menu_items - 1;
		}
	}
	
	if (keyboard_check_pressed(interact1))
	{
		ChangeMusicOrSound(1,1);
		menu_committed = menu_cursor;
		menu_control = false;
		switch (menu_committed)
		{
			case 3: SlideTransition(TRANS_MODE.GOTO, rNewGame); break;
			case 2: SlideTransition(TRANS_MODE.GOTO, rContinue); break;
			case 1: SlideTransition(TRANS_MODE.GOTO, rOptions); break;
			case 0: game_end(); break;
		}
	}
	
	#endregion
}

