/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_font(fnt_courier);
draw_text(20, 20, chordTransitionTimer);
draw_text(20, 40, chordNumber);

draw_text(20,60, strumStateRaw);
draw_text(20, 80, strumStateTranslated);

draw_rectangle(85, 90, 425, 150, true);
draw_rectangle(85, 20, 425, 80, true);

if chordTransitionTimer < 255{
	c_failBar = make_color_rgb(0 + chordTransitionTimer, 255 - chordTransitionTimer, 0);
}

draw_set_color(c_failBar);
draw_rectangle(95, 30, 95 + (chordTransitionTimer), 70, false);

for (i = 0; i < chordNumber; i++){
	c_trueGreen = make_color_rgb(0, 255, 0);
	draw_set_color(c_trueGreen);
	draw_rectangle(95 + (i * 30), 100, 115 + (i * 30), 140, false);
}

