/// Alarm Event 0
if (spawnEnemies) { // Verifica se pode spawnar inimigos
    if (instance_number(obj_enemy1) + instance_number(obj_enemy3) + instance_number(obj_enemy4) < maxEnemies) {
        var randomEnemy = irandom(3); // Gera um número aleatório de 0 a 3
        
        // Define a distância mínima entre o spawn e o jogador
        var minSpawnDistance = 360; // Altere este valor conforme necessário
        
        // Variáveis para armazenar as coordenadas de spawn ajustadas
        var spawnX, spawnY;
        
        do {
            // Gera coordenadas de spawn aleatórias
            spawnX = irandom_range(32, 928);
            spawnY = irandom_range(32, 298);
            
            // Verifica a distância entre o spawn e o jogador
        } until (point_distance(spawnX, spawnY, obj_player.x, obj_player.y) >= minSpawnDistance);
        
        switch (randomEnemy) {
            case 0:
                if (instance_number(obj_enemy1) < maxEnemies) {
                    instance_create_layer(spawnX, spawnY, layer, obj_enemy1);
                }
                break;
            case 1:
                if (instance_number(obj_enemy3) < maxEnemies) {
                    instance_create_layer(spawnX, spawnY, layer, obj_enemy3);
                }
                break;
            case 2:
                if (instance_number(obj_enemy4) < maxEnemies) {
                    instance_create_layer(spawnX, spawnY, layer, obj_enemy4);
                }
                break;
        }
    }
    
    // Define um novo tempo de alarme fixo para o próximo spawn em frames
    alarm[0] = spawnRateFrames;
}
