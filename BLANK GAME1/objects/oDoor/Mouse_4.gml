if(global.cutscene_active == 0)
{
	if(global.has_door_key)
	{
		audio_play_sound(Jumpscare, 0, false)
		image_index = 0;
		global.has_door_key = 0;
		global.cutscene_active = 2;
		image_speed = 1;
	}
	else
	{
		audio_play_sound(Locked, 0, false);
	}
}