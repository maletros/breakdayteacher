spd = 4;
hspd = 0;
vspd = 0;
grv = 0.4;
hp = 200;

image_speed = 0.5;

snd_boss_music = snd_boss;

// Verifica se a música já está tocando para evitar múltiplas execuções
if (!audio_is_playing(snd_boss_music)) {
    // Toca o áudio em loop
    audio_play_sound(snd_boss_music, 1, true);
}