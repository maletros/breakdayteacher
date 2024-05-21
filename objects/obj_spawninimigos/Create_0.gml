/// Create Event
maxEnemies = 100; // Define o limite máximo de inimigos na sala
spawnRateSeconds = 1; // Define o intervalo fixo entre spawns em segundos
spawnRateFrames = spawnRateSeconds * room_speed; // Converte o intervalo de segundos para frames
alarm[0] = 120; // Aciona o alarme 0 após 2 segundos no jogo

timeLimit = room_speed * 60 * 1; // Cinco minutos em segundos
startTime = timeLimit; // Tempo inicial igual ao tempo limite
spawnEnemies = true; // Variável para controlar o spawn de inimigos
