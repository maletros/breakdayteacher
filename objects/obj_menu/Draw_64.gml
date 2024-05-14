// Desenha o texto do menu
draw_set_font(ft_menu);
var gui_height = display_get_gui_height();
var margin = 50;
var x1 = margin; // Define x1 como a margem esquerda da tela
var y1 = gui_height / 4; // Desça o título um pouco mais
var m_x = device_mouse_x_to_gui(0); // Inicializa m_x com a posição do mouse na tela GUI
var m_y = device_mouse_y_to_gui(0); // Inicializa m_y com a posição do mouse na tela GUI

draw_set_halign(fa_left); // Alinha o texto à esquerda

for (var i = 0; i < op_max; i++) {
    var y2 = y1 + (margin * (i + 2)); // Deslocamento vertical para as opções abaixo do título
    var string_h = string_height(options[i]);

    if (point_in_rectangle(m_x, m_y, x1, y2 - string_h / 2, x1 + string_width(options[i]), y2 + string_h / 2)) {
        draw_set_color(c_green);
        index = i;
        if (mouse_check_button_pressed(mb_left)) {
            if (index == 0) { // Se o botão "Jogar" for clicado
                room_goto(mapa1); // Transição para a room "mapa1"
            } else if (index == 2) {
                game_end();
            }
        }
    } else {
        draw_set_color(c_white);
    }

    draw_text(x1, y2, options[i]);
}