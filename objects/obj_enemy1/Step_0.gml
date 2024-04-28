#region MORRER
// Esta região contém o código para fazer o inimigo desaparecer quando atingido

// Verifique se o inimigo colidiu com o objeto de tiro
if (place_meeting(x, y, obj_shoot)) {
    // Faça o inimigo desaparecer
    instance_destroy();
}
#endregion

#region MORRER
// Esta região contém o código para fazer o inimigo desaparecer quando atingido

// Verifique se o inimigo colidiu com o objeto de tiro
if (place_meeting(x, y, obj_shoot)) {
    // Faça o inimigo desaparecer
    instance_destroy();
}
#endregion

// Adicionando o código para fazer o inimigo se mover em direção ao jogador
// Verifique a distância entre o inimigo e o jogador
var dist = point_distance(x, y, obj_player.x, obj_player.y);

// Defina a velocidade de aproximação
var speed_approach = 2;

// Se a distância for menor que um valor específico (por exemplo, 200 pixels), comece a se aproximar do jogador
if (dist < 200) {
    // Calcula a direção em relação ao jogador
    var dir = point_direction(x, y, obj_player.x, obj_player.y);

    // Ajusta a velocidade horizontal e vertical para mover em direção ao jogador
    hspd = lengthdir_x(speed_approach, dir);
    vspd = lengthdir_y(speed_approach, dir);
} else {
    // Se o jogador estiver longe demais, pare de se mover
    hspd = 0;
    vspd = 0;
}

// Aplica a gravidade (se necessário)
vspd += grv;

// Move o inimigo
x += hspd;
y += vspd;
