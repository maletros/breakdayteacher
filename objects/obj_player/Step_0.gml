#region CONTROLES

var _key_right = keyboard_check(ord("D"));
var _key_left = keyboard_check(ord("A"));
var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));

// Verifica se o botão esquerdo do mouse está pressionado
key_shoot = mouse_check_button(mb_left);

#endregion

#region MOVIMENTAÇÃO

if _key_right
{
    x += 1;
}

if _key_left
{
    x -= 1;
}

if _key_up
{
    y -= 1;
}

if _key_down
{
    y += 1;
}

 #region TIRO

 var _flipped = direction;
 var _gun_x = (x + 4) * (_flipped);
 var _xx = x + lengthdir_x(15, image_angle);
 var _y_offset = lengthdir_y(-20, image_angle);
 
 // Decrementa o timer do cooldown se for maior que zero
 if shoot_timer > 0
 {
     shoot_timer--;
 }
 
 // Verifica se o botão do mouse está pressionado e se o cooldown terminou
 if key_shoot && shoot_timer <= 0
 {
     // Criação do tiro
     with (instance_create_layer(_xx, y + 3, "Shoot", obj_shoot))
     {
         // VELOCIDADE DO TIRO
         speed = 10;
         // DIREÇÃO
         direction = point_direction(x, y, mouse_x, mouse_y);
         // ÂNGULO
         image_angle = direction;
     }
     // Reinicia o cooldown
     shoot_timer = shoot_cooldown;
 }

 #endregion

 #region COMBATE
 
 // if alarm[0] > 0 {
	 // if image_alpha >= 1 {
		 // alfa_hit = -0.05;
	 // } else if image_alpha <= 0 {
		 // alfa_hit = 0.05;
	 // }
	 
	 // image_alpha += alfa_hit;
 // } else {
	 // image_alpha = 1;
 // }
 
 // #endregion


#endregion



