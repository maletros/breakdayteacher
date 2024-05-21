// Definindo as posições específicas para cada item do menu
var positions = [
    [520, 520], // Posição para "Iniciar partida"
];

// Definir a cor #00bc2a
var custom_green = make_color_rgb(255, 255, 255);

// Desenha o texto do menu
draw_set_font(ft_menu);
var m_x = device_mouse_x_to_gui(0); // Inicializa m_x com a posição do mouse na tela GUI
var m_y = device_mouse_y_to_gui(0); // Inicializa m_y com a posição do mouse na tela GUI

draw_set_halign(fa_left); // Alinha o texto à esquerda
draw_set_color(custom_green); // Define a cor do texto como custom_green

for (var i = 0; i < op_max; i++) {
    var pos_x = positions[i][0];
    var pos_y = positions[i][1];

    // Desenha cada item do menu
    if (i == 0) {
        // Dividir "Iniciar partida" em duas linhas
        var line1 = "VOLTAR AO MENU";
        var line_spacing = string_height(line1); // Espaçamento entre as linhas

        // Desenhar a primeira linha
        draw_text(pos_x, pos_y, line1);

        // Detectar clique na área combinada
        if (point_in_rectangle(m_x, m_y, pos_x, pos_y - line_spacing / 2, pos_x + string_width(line1), pos_y + line_spacing * 1.5)) {
            if (mouse_check_button_pressed(mb_left)) {
				audio_stop_sound(snd_gameover_music);
                room_goto(rm_menu); // Transição para a room "mapa1"
            }
        }
    } else {
        // Para outras opções, desenhar normalmente
        draw_text(pos_x, pos_y, options[i]);

        // Detectar clique na opção
        var string_h = string_height(options[i]);
        if (point_in_rectangle(m_x, m_y, pos_x, pos_y - string_h / 2, pos_x + string_width(options[i]), pos_y + string_h / 2)) {
            if (mouse_check_button_pressed(mb_left)) {
                if (index == 2) {
                    game_end();
                }
            }
        }
    }
}