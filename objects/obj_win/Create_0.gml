options = ["VOLTAR AO MENU", ];
op_max = array_length(options);
index = 0;

snd_gameover_music = snd_win;

// Verifica se a música já está tocando para evitar múltiplas execuções
if (!audio_is_playing(snd_gameover_music)) {
    // Toca o áudio em loop
    audio_play_sound(snd_gameover_music, 1, false);
}