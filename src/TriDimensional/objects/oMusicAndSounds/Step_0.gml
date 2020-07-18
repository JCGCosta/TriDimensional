// Configura Volume Musica

if (music_target >= 0 && musicLoad)
{
	var MusicsVolLv;
	MusicsVolLv = musicVol / 19;
	audio_group_set_gain(MusicsGroup,MusicsVolLv,0);
}

// Configura Volume Efeitos Sonoros

if (sound_target >= 0 && soundLoad)
{
	var SoundsVolLv;
	SoundsVolLv = soundVol / 19;
	audio_group_set_gain(SoundsGroup,SoundsVolLv,0);
}
