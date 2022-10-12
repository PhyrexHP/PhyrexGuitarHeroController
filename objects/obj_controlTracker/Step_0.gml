/// @description Insert description here
// You can write your code in this editor
if keyboard_check_pressed(ord("A")){
	greenPressed = 1;
}
else{
	greenPressed = 0;
}

if keyboard_check_pressed(ord("S")){
	redPressed = 1;
}
else{
	redPressed = 0;
}

if keyboard_check_pressed(ord("D")){
	yellowPressed = 1;
}
else{
	yellowPressed = 0;
}

if keyboard_check_pressed(ord("F")){
	bluePressed = 1;
}
else{
	bluePressed = 0;
}

if keyboard_check_pressed(ord("G")){
	orangePressed = 1;
}
else{
	orangePressed = 0;
}

if keyboard_check_pressed(ord("I")){
	strumState = 1;
}
else if keyboard_check_pressed(ord("J")){
	strumState = -1;
}
else{
	strumState = 0;
}



