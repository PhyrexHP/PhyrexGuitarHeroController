// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function buildChord(){
	greenOn = irandom_range(0,1);
	redOn = irandom_range(0,1);
	yellowOn = irandom_range(0,1);
	blueOn = irandom_range(0,1);
	orangeOn = irandom_range(0,1);
	strumStateNext = irandom_range(-1,1);
	
	obj_chordManager.currentGreenOn = obj_chordManager.nextGreenOn;
	obj_chordManager.currentRedOn = obj_chordManager.nextRedOn;
	obj_chordManager.currentYellowOn = obj_chordManager.nextYellowOn;
	obj_chordManager.currentBlueOn = obj_chordManager.nextBlueOn;
	obj_chordManager.currentOrangeOn = obj_chordManager.nextOrangeOn;
	
	obj_chordManager.nextGreenOn = greenOn;
	obj_chordManager.nextRedOn = redOn;
	obj_chordManager.nextYellowOn = yellowOn;
	obj_chordManager.nextBlueOn = blueOn;
	obj_chordManager.nextOrangeOn = orangeOn;
	
}