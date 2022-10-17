// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function buildChord(){
	
	instance_destroy(obj_greenIndicator);
	instance_destroy(obj_redIndicator);
	instance_destroy(obj_yellowIndicator);
	instance_destroy(obj_blueIndicator);
	instance_destroy(obj_orangeIndicator);
	instance_destroy(obj_strumUp);
	instance_destroy(obj_strumDown);
	instance_destroy(obj_whammyIndicator);
	
	greenOn = irandom_range(0,1);
	redOn = irandom_range(0,1);
	yellowOn = irandom_range(0,1);
	blueOn = irandom_range(0,1);
	orangeOn = irandom_range(0,1);
	strumStateNext = irandom_range(0,1);
	whammyStateNext = irandom_range(0,100);
	
	if greenOn = 1{
		instance_create_depth(76, 179, 1, obj_greenIndicator);
	}
	
	if redOn = 1{
		instance_create_depth(156, 179, 1, obj_redIndicator);
	}
	
	if yellowOn = 1{
		instance_create_depth(236, 179, 1, obj_yellowIndicator);
	}
	
	if blueOn = 1{
		instance_create_depth(316, 179, 1, obj_blueIndicator);
	}
	
	if orangeOn = 1{
		instance_create_depth(396, 179, 1, obj_orangeIndicator);
	}
	
	if strumStateNext = 0{
		instance_create_depth(512, 147, 1, obj_strumUp);
	}
	else if strumStateNext = 1{
		instance_create_depth(512, 147, 1, obj_strumDown);
	}
	
	instance_create_depth(604, (whammyStateNext * 3) + 48, -1, obj_whammyIndicator);
	
	obj_chordManager.currentGreenOn = obj_chordManager.nextGreenOn;
	obj_chordManager.currentRedOn = obj_chordManager.nextRedOn;
	obj_chordManager.currentYellowOn = obj_chordManager.nextYellowOn;
	obj_chordManager.currentBlueOn = obj_chordManager.nextBlueOn;
	obj_chordManager.currentOrangeOn = obj_chordManager.nextOrangeOn;
	obj_chordManager.currentStrumState = obj_chordManager.nextStrumState;
	obj_chordManager.currentWhammyState = obj_chordManager.nextWhammyState;
	
	obj_chordManager.nextGreenOn = greenOn;
	obj_chordManager.nextRedOn = redOn;
	obj_chordManager.nextYellowOn = yellowOn;
	obj_chordManager.nextBlueOn = blueOn;
	obj_chordManager.nextOrangeOn = orangeOn;
	obj_chordManager.nextStrumState = strumStateNext;
	obj_chordManager.nextWhammyState = whammyStateNext;
	
}