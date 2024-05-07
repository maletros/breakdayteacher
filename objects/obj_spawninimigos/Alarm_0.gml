/// Alarm 0 Event
if (instance_number(obj_enemy1) + instance_number(obj_enemy3) + instance_number(obj_enemy4) + instance_number(obj_enemy5) < maxEnemies) {
    var randomEnemy = irandom(3); // Gera um número aleatório de 0 a 3
    var spawnX = irandom_range(32, 928); // Gera uma posição x aleatória
    var spawnY = irandom_range(32, 298); // Gera uma posição y aleatória
    
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
        case 3:
            if (instance_number(obj_enemy5) < maxEnemies) {
                instance_create_layer(spawnX, spawnY, layer, obj_enemy5);
            }
            break;
    }
}

alarm[0] = irandom_range(spawnRateLow, spawnRateHigh); // o alarme agora reativará entre os valores baixo e alto definidos no evento Create