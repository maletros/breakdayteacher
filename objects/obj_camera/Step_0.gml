if not instance_exists(target1_) exit;

x = lerp(x, target1_.x, 0.1);
y = lerp(y, target1_.y - height_ / 100, 0.1);
camera_set_view_pos(view_camera[0], x - width_ / 2, y - height_ / 2);