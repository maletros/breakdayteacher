snd_map_music = snd_map;

// Verifica se a música já está tocando para evitar múltiplas execuções
if (!audio_is_playing(snd_map_music)) {
    // Toca o áudio em loop
    audio_play_sound(snd_map_music, 1, true);
}
