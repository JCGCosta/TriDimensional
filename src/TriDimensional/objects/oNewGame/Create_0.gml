/// @description Create NewGame

NGgui_width = display_get_gui_width();
NGgui_height = display_get_gui_height();
NGmenu_x = NGgui_width / 2;
NGmenu_y = NGgui_height / 2;
NGmenu_itemheight = 54;
NGmenu_y_target_com1 = (NGgui_height / 4) + (NGmenu_itemheight * 1.5);
NGmenu_y_target_com0 = NGgui_height / 4;
NGmenu_y_target_com_1 = 432;
NGmenu_Alpha = 1;
NGmenu_AlphaTarget = 0;
NGmenu_control = true;
NGmenu_committed = -1;
NGmenu_speed = 25;

NGmenu[1] = sStoryMode;
NGmenu[0] = sCustomMatch;

NGmenu_cursor = 1;
NGmenu_items = array_length_1d(NGmenu);