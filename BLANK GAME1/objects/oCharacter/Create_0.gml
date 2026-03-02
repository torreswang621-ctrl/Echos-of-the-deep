
if(!audio_is_playing(Suspense2))
{
	audio_play_sound(Suspense2, 1, true)
}
walk_speed = 5;
walk_cycle = 0;
x_speed = 0;
y_speed = 0;

global.has_key_one = false;
global.has_key_two = false;

// Trail history: 2 seconds at current room speed
global.history_length = room_speed * 2;   // e.g., 120 frames at 60 fps
global.frame_counter = 0;

// Create arrays with double size and fill with starting position
global.history_x = array_create(global.history_length * 2, x);
global.history_y = array_create(global.history_length * 2, y);
// Add direction array
global.history_dir = array_create(global.history_length * 2, image_xscale);