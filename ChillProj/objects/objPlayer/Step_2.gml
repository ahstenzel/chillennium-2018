/// @description Sprite control
if (on_ground)
{
	if (vx != 0 || vy != 0) { 
		if (skidding) { sprite_index = sprPlayerSkid; }
		else { sprite_index = sprPlayerMove; }
	}
	else { sprite_index = sprPlayerIdle; }
}
else
{
	if (vy<0) { sprite_index = sprPlayerJump; }
	else { sprite_index = sprPlayerFall; }
}