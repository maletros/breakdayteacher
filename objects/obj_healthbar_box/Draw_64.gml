sprite_index = spr_healthbar_box;

// Definir a altura e largura da barra HUD com base na sprite
var _width = sprite_get_width(sprite_index);
var _height = sprite_get_height(sprite_index);

// Desenhar a barra HUD com a altura e largura definidas
draw_sprite_ext(sprite_index, image_index, x * 1.5, y * 1.6, 5, 5, 0, c_white, 1);