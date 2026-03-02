scraps++;
if(scraps == 30)
{
	image_index++;
	global.scraps++;
	if(global.scraps == 4)
	{
		room_goto(K_End);
	}
	scraps = 0;
}
