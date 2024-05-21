/// Step Event
if (room == mapa1) { // Verifica se está na sala "mapa1"
    startTime -= 1; // Decrementa o tempo restante
    
    if (startTime <= 0 && spawnEnemies) { // Verifica se passou o tempo limite e se ainda pode spawnar inimigos
        spawnEnemies = false; // Para de spawnar novos inimigos

        // Destruir todos os inimigos existentes
        with (obj_enemy1) {
            instance_destroy();
        }
        with (obj_enemy3) {
            instance_destroy();
        }
        with (obj_enemy4) {
            instance_destroy();
        }
        
        // Criar apenas um obj_enemy2 no centro do mapa
        var centerX = room_width / 2;
        var centerY = room_height / 2;
        instance_create_layer(centerX, centerY, layer, obj_enemy2);
    }
}