if(!animation)
{
		current++;
		sprite_index = costumes[current];
		if(current == 5)
		{
			image_index = 0;      // start at frame 0 (first frame)
			image_speed = 1;      // play at 1 frame per second (matches sprite setting)
			played = false;
			animation = true;
		}
}