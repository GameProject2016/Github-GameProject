/* ~~~~~~~~~~~~~~~~~~~~~~   start_countdown script   ~~~~~~~~~~~~~~~~~~~~~~~~~~
start_countdown(minutes) <- will start timer and set to number of min specified
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

instance_create(view_wview / 2,50,obj_countdown);

with(obj_countdown){ 

    alarm[0] = 30;
    start_time = argument0;
    
}
