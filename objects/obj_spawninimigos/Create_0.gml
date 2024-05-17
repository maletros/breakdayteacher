/// Create Event
maxEnemies = 15; // Define o limite máximo de inimigos na sala
spawnRateLow = 10; // Define o intervalo mínimo entre spawns
spawnRateHigh = 50; // Define o intervalo máximo entre spawns
alarm[0] = 120; // Aciona o alarme 0 após 2 segundos no jogo

timeLimit = room_speed * 60 * 5; // Cinco minutos em segundos
startTime = timeLimit; // Tempo inicial igual ao tempo limite
spawnEnemies = true; // Variável para controlar o spawn de inimigos