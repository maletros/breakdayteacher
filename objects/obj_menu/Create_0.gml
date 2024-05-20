options = ["Iniciar partida","Opções","Sair"];
op_max = array_length(options);
index = 0;

snd_menu_music = Sound1;

// Verifica se a música já está tocando para evitar múltiplas execuções
if (!audio_is_playing(snd_menu_music)) {
    // Toca o áudio em loop
    audio_play_sound(snd_menu_music, 1, true);
}
