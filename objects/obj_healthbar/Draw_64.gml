sprite_index = spr_healthbar;

// Definir a altura e largura da barra HUD com base na sprite
var _width = sprite_get_width(sprite_index);
var _height = sprite_get_height(sprite_index);

var _vida = obj_player.hp;
var _maxvida = obj_player.max_hp;

// Desenhar a barra HUD com a altura e largura definidas
draw_sprite_ext(sprite_index, image_index, (x * 20) * (_vida / _maxvida), y * 20, 5, 5, 0, -1, 1);


