/// @description Options

gui_x = display_get_gui_width();
gui_y = display_get_gui_height();

adjustment_x = gui_x / 6;
adjustment_y = (gui_y / 6);

music_x = gui_x / 6;
music_y = (gui_y / 6) * 2;

Cmusic_x = gui_x / 6;
Cmusic_y = (gui_y / 6) * 3;

sound_x = gui_x / 6;
sound_y = (gui_y / 6) * 4;

Csound_x = gui_x / 6;
Csound_y = (gui_y / 6) * 5;

controls_x = (gui_x / 6) * 4;
controls_y = (gui_y / 6);

currentMusic = real(musicVol);
currentSound = real(soundVol);

op_control = true;
op_committed = -1;

op[1] = "Music";
op[0] = "Sound";

op_cursor = 1;
op_items = array_length_1d(op);