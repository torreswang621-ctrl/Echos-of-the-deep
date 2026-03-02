// Safety check – if arrays aren't ready, hide and exit
if (global.history_x == undefined || global.history_y == undefined || global.history_length <= 0) {
    visible = false;
    exit;
}

if (global.frame_counter >= global.history_length) {
    // Enough history – show and follow
    visible = true;
    var past_idx = (global.frame_counter - global.history_length) mod (global.history_length * 2);
    x = global.history_x[past_idx];
    y = global.history_y[past_idx];
	image_xscale = global.history_dir[past_idx];
} else {
    // Not yet 2 seconds – stay hidden
    visible = false;
    // Optionally stay at spawn: x = start_x; y = start_y;
}