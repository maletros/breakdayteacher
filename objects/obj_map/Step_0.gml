// No evento Step do controlador global ou do objeto principal

// Verifica se o obj_enemy2 existe no mapa
if (instance_exists(obj_enemy2)) {
    // Para a música
    if (audio_is_playing(snd_map_music)) {
        audio_stop_sound(snd_map_music);
    }
} else {
    // Verifica se a música já está tocando para evitar múltiplas execuções
    if (!audio_is_playing(snd_map_music)) {
        // Toca o áudio em loop
        audio_play_sound(snd_map_music, 1, true);
    }
}
