room_goto(rm_game_over);
// No evento Destroy do obj_player

// Verifica se a música snd_map está tocando e para ela
if (audio_is_playing(snd_map)) {
    audio_stop_sound(snd_map);
}

// Verifica se a música snd_boss está tocando e para ela
if (audio_is_playing(snd_boss)) {
    audio_stop_sound(snd_boss);
}
