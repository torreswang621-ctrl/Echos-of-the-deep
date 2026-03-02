// Ignore clicks during cutscenes
if (global.cutscene_active) exit;

// Find the drawer that contains this key (based on key's own position)
var my_drawer = collision_point(x, y, oDrawer, false, true);

// Only pick up if the drawer exists, is open, and is ready for pickup
if (my_drawer != noone && my_drawer.sprite_index == sDrawerOpen && my_drawer.ready_for_pickup) {
    // Set global flag so other objects (like doors) know the key was collected
    global.has_door_key = true;
    instance_create_layer(1216, 0, "Items", oIconKey);
    // Optional: play a sound or show a message
    // audio_play_sound(snd_key_pickup, 0, false);
    visible = false;
    // Destroy the key
	alarm[0] = 3;
}
// Otherwise, do nothing