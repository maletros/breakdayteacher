window_set_size(1280, 720);

// Inicializa a variável key_shoot como false
key_shoot = false;

// Inicializa o cooldown do tiro (em steps)
shoot_cooldown = 20; // Ajuste este valor conforme necessário
shoot_timer = 0; // Timer para controle do cooldown

spd = 5;
hspd = 0;
vspd = 0;
grv = 0.4;
global.bullets = 100; // Este valor não será mais usado, mas pode ser removido se desejar