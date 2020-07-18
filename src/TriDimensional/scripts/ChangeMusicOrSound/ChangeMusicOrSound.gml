/// @param TypeOf
/// @param IDmusicOrSound

// 0 for music
// 1 for sound

// Musicas
// 0 - Menu Musica

// Efeitos Sonoros
// 0 - Select
// 1 - GoIn
// 2 - GoBack

var Type = argument0;
var ID = argument1;

with (oMusicAndSounds)
{
	if (Type = 0)
	{
		music_target = ID;
		if (music_target >= 0 and musicLoad)
		{
			audio_play_sound(musics[music_target],1000,true);
		}
	}
	
	if (Type = 1)
	{
		sound_target = ID;
		if (sound_target >= 0 and soundLoad)
		{
			audio_play_sound(sounds[sound_target],10,false);
		}
	}
}

