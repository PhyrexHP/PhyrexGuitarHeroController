/// @description Insert description here
// You can write your code in this editor
strumState = gamepad_axis_value(0, gp_axisrv);

if strumState > 0{
	buttonPressed = 1;
	image_index = 0;
}
else if strumState < 0{
	buttonPressed = -1;
	image_index = 1;
}
else{
	buttonPressed = 0;
}



