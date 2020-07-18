var file;

if (file_exists(CONFIGURATION))
{	
	file_delete(CONFIGURATION);
	file = file_text_open_write(CONFIGURATION);
	file_text_write_string(file,"Music=" + string(musicVol));
	file_text_writeln(file);
	file_text_write_string(file,"Sound=" + string(soundVol));
	file_text_close(file);
}
