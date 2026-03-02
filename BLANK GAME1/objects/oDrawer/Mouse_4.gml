// If a cutscene is active, do nothing
if (global.cutscene_active != 0) exit;

// Prevent closing if mouse is over a key (optional, but keeps behavior clean)
var key_here = collision_point(mouse_x, mouse_y, oKey, false, true);
var bat_here = collision_point(mouse_x, mouse_y, oBat, false, true);
if (sprite_index == sDrawerClosed) {
    // Open the drawer
    sprite_index = sDrawerOpen;
    ready_for_pickup = false;          // key not ready yet
    alarm[0] = 15;                     // wait ~0.25 seconds at 60fps (adjust as needed)
}
else if (sprite_index == sDrawerOpen && key_here == noone && bat_here = noone) {
    // Close the drawer only if no key is under the mouse
    sprite_index = sDrawerClosed;
    ready_for_pickup = false;          // reset
    alarm[0] = -1;                      // cancel any pending alarm
}