// ---- Movement (your existing code, keep as is) ----
x_speed = 0;
y_speed += 0.5;

if (keyboard_check(vk_right)) {
    x_speed = walk_speed;
    image_xscale = 1;
} else if (keyboard_check(vk_left)) {
    x_speed = -walk_speed;
    image_xscale = -1;
}

if (place_meeting(x, y + 1, oSolid)) {
    if (keyboard_check_pressed(vk_up)) {
        y_speed = -15
    } else {
        y_speed = 0;
    }
}

// Death – just go to death room; the new player will reset history automatically
if (place_meeting(x, y, oDeath)||y > room_height ) {
    room_goto(H_Death);
}
if(y < 0)
{
	y_speed = -y_speed/2;
}
if( x > room_width)
{
	room_goto_next();
}
// ---- Record position (corrected parentheses) ----
var idx = global.frame_counter mod (global.history_length * 2);
global.history_x[idx] = x;
global.history_y[idx] = y;
global.history_dir[idx] = image_xscale;
global.frame_counter++;
// --- Sprite state machine ---
if (!place_meeting(x, y + 1, oSolid)) {
    // In the air – use jump sprite
    sprite_index = sCharJump1;
} else {
    // On ground
    if (x_speed == 0) {
        // Not moving – idle
        sprite_index = sCharIdle;
    } else {
        // Walking – alternate between two sprites
        // Use a simple frame counter to switch every few steps
        if (walk_cycle == undefined) walk_cycle = 0;  // initialize in Create
        walk_cycle = (walk_cycle + 1) % 20;  // adjust divisor for speed
        if (walk_cycle < 10) {
            sprite_index = sCharJump1;
        } else {
            sprite_index = sCharJump2;
        }
    }
}
// ---- Move ----
move_and_collide(x_speed, y_speed, oSolid);