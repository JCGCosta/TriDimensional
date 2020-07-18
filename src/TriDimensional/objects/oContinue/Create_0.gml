/// @description Insert description here
// You can write your code in this editor

gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

Cmenu_control = false;
Cmenu_committed = -1;
Cmenu_itemheight = 15;

Cmenu[2] = sSlotContinueS;
Cmenu[1] = sSlotContinueS;
Cmenu[0] = sSlotContinueS;

Cmenu_cursor = 2;
Cmenu_items = array_length_1d(Cmenu);

for (var i = 0; i < Cmenu_items; i++)
{
	var xx = gui_width / 2;
	var yy = (gui_height / 4) * (i+1);
		
	instance_create_layer(xx,yy,"SlotLayer",oSlotA);
}

