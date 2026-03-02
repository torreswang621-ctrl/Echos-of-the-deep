image_speed = 0;
image_index = image_number - 1;   // force the last frame

// Your other actions
instance_create_layer(508, 480, "Instances", oBackButton);
if (sprite_index == sEndGood) {
    audio_play_sound(MenuScreen, 1, true);
} else {
    audio_play_sound(Suspense, 1, true);
}
global.has_door_key = false;
global.cutscene_active = 0;
global.game_active = false;
global.has_bat = false;
global.shards = 0;