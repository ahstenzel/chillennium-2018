/// @description Handles input continuously, auto-detecting keyboard or gamepad.
/// @param input
/// @param device
switch (argument0)
{
	case Keys.Left:
		return abs(clamp(gamepad_axis_value(argument1, gp_axislh), -1, 0));
	break;
	case Keys.Right:
		return abs(clamp(gamepad_axis_value(argument1, gp_axislh), 0, 1));
	break;
	case Keys.Up:
		return abs(clamp(gamepad_axis_value(argument1, gp_axislv), -1, 0));
	break;
	case Keys.Down:
		return abs(clamp(gamepad_axis_value(argument1, gp_axislv), 0, 1));
	break;
	case Keys.Jump:
		return gamepad_button_check_released(argument1, gp_face1);
	break;
	case Keys.Att:
		return gamepad_button_check_released(argument1, gp_face3);
	break;
	case Keys.Start:
		return gamepad_button_check_released(argument1, gp_start);
	break;
}