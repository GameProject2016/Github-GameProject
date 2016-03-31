///scr_get_input()
if global.controller == "arrows"{
key_left = -keyboard_check(vk_left);
key_up = -keyboard_check(vk_up);
key_right= keyboard_check(vk_right);
key_down = keyboard_check(vk_down);
}else{
key_left = -keyboard_check(ord("A"));
key_up = -keyboard_check(ord("W"));
key_right= keyboard_check(ord("D"));
key_down = keyboard_check(ord("S"));
}

if gamepad_is_connected(0){
    key_left = gamepad_axis_value(0,gp_axislh) < 0;
    key_up = gamepad_axis_value(0,gp_axislv) < 0;
    key_right= gamepad_axis_value(0,gp_axislh) > 0;
    key_down = gamepad_axis_value(0,gp_axislv) > 0;
}
