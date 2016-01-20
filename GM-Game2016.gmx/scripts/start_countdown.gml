/* ~~~~~~~~~~~~~~~~~~~~~~   start_countdown script   ~~~~~~~~~~~~~~~~~~~~~~~~~~
start_countdown(minutes) <- will start timer and set to number of min specified
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

instance_create(0,0,obj_countdown);

with(obj_countdown){ 

    alarm[0] = 30;
    start_time = argument0;
    
}
