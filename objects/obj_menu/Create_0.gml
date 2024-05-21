options = ["Iniciar partida","Opções","Sair"];
op_max = array_length(options);
index = 0;

snd_start_music = snd_start_menu;
snd_menu_music = snd_menu;

// if (!audio_is_playing(snd_start_music)) {
    // Toca o áudio em loop
    // audio_play_sound(snd_start_music, 1, false);
// }

// Verifica se a música já está tocando para evitar múltiplas execuções
if (!audio_is_playing(snd_menu_music)) {
    // Toca o áudio em loop
    audio_play_sound(snd_menu_music, 1, true);
}
