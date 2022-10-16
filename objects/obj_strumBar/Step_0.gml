/// @description Insert description here
// You can write your code in this editor
if gamepad_button_check(0, gp_padd){
	buttonPressed = 0;
	image_index = 0;
}
else if gamepad_button_check(0, gp_padu){
	buttonPressed = 1;
	image_index = 1;
}
else
{	
	buttonPressed = -1;
}



