window_set_size(1280, 720);

// Inicializa a variável key_shoot como false
key_shoot = false;

// Inicializa o cooldown do tiro (em steps)
shoot_cooldown = 20; // Ajuste este valor conforme necessário
shoot_timer = 0; // Timer para controle do cooldown

spd = 100;
hspd = 0;
vspd = 0;
grv = 0.4;

hp = 100;
max_hp = 100;
xp = 0;
global.bullets = 50000;
alfa_hit = 0;
alarm[0] = 0;
