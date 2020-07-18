/// @description Control Option
musicVol = currentMusic;
soundVol = currentSound;

if (keyboard_check_pressed(up))
{
		ChangeMusicOrSound(1,0);
		op_cursor++;
		if (op_cursor >= op_items) op_cursor = 0;
}
	
if (keyboard_check_pressed(down))
{	
		ChangeMusicOrSound(1,0);
		op_cursor--;
		if (op_cursor < 0) op_cursor = op_items - 1;
}

if (keyboard_check_pressed(left))
{	
		switch (op[op_cursor])
		{
			case "Music":
				if (currentMusic >= 1) currentMusic--;
			break;
	
			case "Sound":
				if (currentSound >= 1)	currentSound--;
			break;
		}
}

if (keyboard_check_pressed(right))
{	
		switch (op[op_cursor])
		{
			case "Music":
				if (currentMusic <= 18) currentMusic++;
			break;
	
			case "Sound":
				if (currentSound <= 18) currentSound++;
			break;
		}
}
