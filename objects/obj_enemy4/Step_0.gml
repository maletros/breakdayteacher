#region MORRER
// Esta região contém o código para fazer o inimigo desaparecer quando atingido

// Verifique se o inimigo colidiu com o objeto de tiro
if (place_meeting(x, y, obj_shoot)) {
    // Faça o inimigo desaparecer
    instance_destroy();
}
#endregion
