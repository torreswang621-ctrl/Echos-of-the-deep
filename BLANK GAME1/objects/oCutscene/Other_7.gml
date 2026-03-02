if(sprite_index == sCutsceneAlt)
{
	room_goto(H_Death);
}
else if (sprite_index == sCutscene)
{
	sprite_index = Sprite40;
	alarm[0] = 100;
}