var file;
var arr1 = undefined;
var arr2 = undefined;

var music, sound;

if (file_exists(CONFIGURATION))
{	
	file = file_text_open_read(CONFIGURATION);
	music = file_text_read_string(file);
	file_text_readln(file);
	sound = file_text_read_string(file);
	file_text_close(file);
	arr1 = SplitString(music,"=");
	arr2 = SplitString(sound,"=");
	music = arr1[1];
	sound = arr2[1];
	
}
else
{
	file = file_text_open_write(CONFIGURATION);
	
	file_text_write_string(file,"Music=10");
	file_text_writeln(file);
	file_text_write_string(file,"Sound=10");
	file_text_close(file);

	music = "10";
	sound = "10";
}

musicVol = music;
soundVol = sound;


up = ord("W");
down = ord("S");
left = ord("A");
right = ord("D");
interact1 = vk_space;
interact2 = vk_escape;
