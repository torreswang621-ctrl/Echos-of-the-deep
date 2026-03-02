if (!played && current == 5 && animation) {
    played = true;
	global.cutscene_active = 0;
	audio_stop_sound(Intro)
	room_goto(D_Game);
}