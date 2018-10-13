/// @description Motion
/// Movement control
if (in_c(Keys.Right, p_num) && !global.cutscene) { vx+=move_acc; } else if (vx > 0) 
{
	if (on_ground) { vx-=move_fric; }
	else { vx-=(move_fric*0.6) }
}
if (in_c(Keys.Left, p_num) && !global.cutscene)  { vx-=move_acc; } else if (vx < 0) 
{
	if (on_ground) { vx+=move_fric; }
	else { vx+=(move_fric*0.6); }
}
if (abs(vx) < move_fric) { vx = 0; }
vx = clamp(vx, -move_speed, move_speed);

/// Turning & skidding
if (vx > 0) 
{ 
	face = 1; 
	skidding = in_c(Keys.Left, p_num);
}
if (vx < 0) 
{ 
	face = -1; 
	skidding = in_c(Keys.Right, p_num);
}

/// Gravity & Jumping
if (in_c(Keys.Jump, p_num) && (jumping || on_ground))
{
	jumping = true;
	on_ground = false;
	if (abs(vy) < jump_speed) { vy -= jump_acc; }
	else { jumping = false; }
}
else { jumping = false; }
if (on_ground)
{
	if (!place_meeting(x, y+1, objSolidPar)) { on_ground = false; }
}
else
{
	vy+=fall_grav;
	if (vy > fall_speed) { vy = fall_speed; }
}

///Sub-pixel movement
var mx, my;
cx += vx;
cy += vy;
mx = round(cx);
my = round(cy);
cx -= mx;
cy -= my;
repeat(abs(mx)) 
{
	if (!place_meeting(x+sign(mx), y, objSolidPar)) { x+=sign(mx); }
	else { vx=0; break; }
}
repeat(abs(my)) 
{
	if (!place_meeting(x, y+sign(my), objSolidPar)) { y+=sign(my); }
	else { on_ground=true; vy=0; break; }
}
