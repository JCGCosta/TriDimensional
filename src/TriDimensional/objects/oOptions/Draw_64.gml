/// @description Insert description here
// You can write your code in this editor

	draw_sprite_ext(sAdjustments,0,adjustment_x,adjustment_y,4,4,0,c_white,1);
	draw_sprite_ext(sMusic,0,music_x,music_y,4,4,0,c_white,1);
	draw_sprite_ext(sSound,0,sound_x,sound_y,4,4,0,c_white,1);

	draw_sprite_ext(sControls,0,controls_x,controls_y,5,5,0,c_white,1);

	switch (op[op_cursor])
	{
		case "Music":
			draw_sprite_ext(sProgressBarS,currentMusic,Cmusic_x,Cmusic_y,15,15,0,c_white,1);
			draw_sprite_ext(sProgressBarU,currentSound,Csound_x,Csound_y,15,15,0,c_white,1);
		break;
	
		case "Sound":
			draw_sprite_ext(sProgressBarU,currentMusic,Cmusic_x,Cmusic_y,15,15,0,c_white,1);
			draw_sprite_ext(sProgressBarS,currentSound,Csound_x,Csound_y,15,15,0,c_white,1);
		break;
	}
