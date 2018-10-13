/// @description Set game state
enum Powers 
{
	None = 0,
	Bounce,
	Grab,
	Slam
};
enum Keys
{
	None = 0,
	Up,
	Down,
	Left,
	Right,
	Jump,
	Att,
	Start
}
global.cutscene = false;

/// Controller setup
for(var i=0; i<gamepad_get_device_count(); i++) 
{
	global.gp[i] = gamepad_is_connected(i);	
	gamepad_set_axis_deadzone(i, 0.05);
}