/// @description Initialize
/// Sub pixel movment
vx = 0;
vy = 0;
cx = 0;
cy = 0;
/// Friction & Acceleration
move_acc = 0.4;
move_fric = 0.2;
move_speed = 3.2;
on_ground = false;
fall_grav = 0.32;
fall_speed = 5.5;
jump_acc = 1.3;
jump_speed = 5.2;
jumping = false;
skidding = false;
face = 1;
/// State
p_num = 0;
powers[0] = Powers.None;
powers[1] = Powers.None;
powers[2] = Powers.None;
powers[3] = Powers.None;