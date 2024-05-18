sprite_index = spr_xpbar;

// Definir a altura e largura da barra HUD com base na sprite
var _width = sprite_get_width(sprite_index);
var _height = sprite_get_height(sprite_index);

// Desenhar a barra HUD com a altura e largura definidas
draw_sprite_ext(sprite_index, image_index, x * 0.82, y * 3.5, 5, 5, 0, -1, 1);