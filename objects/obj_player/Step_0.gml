#region CONTROLES

var _key_right = keyboard_check(ord("D"));
var _key_left = keyboard_check(ord("A"));
var _key_up = keyboard_check(ord("W"));
var _key_down = keyboard_check(ord("S"));

key_shoot = mouse_check_button_pressed(mb_left);

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

if key_shoot // Removemos a verificação global.bullets > 0
{
    with (instance_create_layer(_xx, y + 3, "Shoot", obj_shoot))
    {
        // Removemos global.bullets--;
        // VELOCIDADE DO TIRO
        speed = 10;
        // DIREÇÃO
        direction = point_direction(x, y, mouse_x, mouse_y);
        // ÂNGULO
        image_angle = direction;
    }
}

#endregion

#endregion
