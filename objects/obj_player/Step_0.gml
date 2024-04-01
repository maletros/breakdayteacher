#region CONTROLES
var _key_right = keyboard_check(vk_right);
var _key_left = keyboard_check(vk_left);
var _key_up = keyboard_check(vk_up);
var _key_down = keyboard_check(vk_down);
key_shoot = keyboard_check_pressed(ord("X"));
#endregion

#region MOVIMENTAÇÂO

if _key_right
{
	x+=1
}

if _key_left
{
	x-=1
}

if _key_up
{
	y-=1
}

if _key_down
{
	y+=1
}

 #region TIRO
 
 var _flipped = direction;
 var _gun_x = (x + 4) * (_flipped)
 var _xx = x + lengthdir_x(15, image_angle)
 var _y_offset = lengthdir_y(-20, image_angle)
 
 if key_shoot and global.bullets > 0
 {
	 with (instance_create_layer(_xx, y + 3, "Shoot", obj_shoot))
 {
 global.bullets--;
 //VELOCIDADE DO TIRO
 speed = 10;
 //DIREÇÂO
 direction = -90 + 90 * other.image_xscale;
 //ÂNGULO
 image_angle = direction;
 }
 }
 
 #endregion

#endregion
