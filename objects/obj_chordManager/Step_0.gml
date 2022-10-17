/// @description Insert description here
// You can write your code in this editor
strumStateRaw = gamepad_axis_value(0, gp_axisrh);
strumStateTranslated = (strumStateRaw + 1) * 100 / 2;

if keyboard_check_pressed(vk_space){
	chordNumber += 1;
	buildChord();
}

if currentWhammyState <= (strumStateTranslated + 32) and currentWhammyState >= (strumStateTranslated - 32) and currentGreenOn = obj_greenButton.buttonPressed and currentRedOn = obj_redButton.buttonPressed and currentYellowOn = obj_yellowButton.buttonPressed and currentBlueOn = obj_blueButton.buttonPressed and currentOrangeOn = obj_orangeButton.buttonPressed and currentStrumState = obj_strumBar.buttonPressed{
	currentChordMatched = 1;
}
else{
	currentChordMatched = 0;
}

if currentChordMatched = 1{
}
else{
	chordTransitionTimerActive = 1;
}

if chordTransitionTimerActive = 1{
	chordTransitionTimer += 1;
}

if nextWhammyState <= (strumStateTranslated + 32) and nextWhammyState >= (strumStateTranslated - 32) and nextGreenOn = obj_greenButton.buttonPressed and nextRedOn = obj_redButton.buttonPressed and nextYellowOn = obj_yellowButton.buttonPressed and nextBlueOn = obj_blueButton.buttonPressed and nextOrangeOn = obj_orangeButton.buttonPressed and nextStrumState = obj_strumBar.buttonPressed{
	nextChordMatched = 1;
}
else{
	nextChordMatched = 0;
}

if nextChordMatched = 1{
	chordTransitionTimerActive = 0;
	buildChord();
	chordNumber += 1;
}

if chordNumber >= 11{
	room_goto(rm_success);
}
	
if chordTransitionTimer > 320{
	room_goto(rm_fail);
}