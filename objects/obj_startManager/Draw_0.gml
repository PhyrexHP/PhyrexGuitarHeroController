/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_white);
draw_set_font(fnt_courier);
draw_text(300, 180, "press space to start");

if keyboard_check_pressed(vk_space){
	room_goto(rm_controlCenter);
}
