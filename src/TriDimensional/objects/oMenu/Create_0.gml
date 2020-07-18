/// @description Create Menu

window_set_fullscreen(false);
#macro SAVEFILE "save.sav"
#macro CONFIGURATION "cfg.sav"
ConfigurationLoad();
hasSave = SaveLoad();

globalvar PlayerCreated;
PlayerCreated = false;
globalvar MAPX;
globalvar MAPY;

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();
menu_x = gui_width / 2;
menu_y = gui_height / 2;
menu_itemheight = 27;
menu_control = true;
menu_committed = -1;

menu[3] = sNewGame;
menu[2] = sContinue;
menu[1] = sOptions;
menu[0] = sQuit;

menu_cursor = 3;
menu_items = array_length_1d(menu);