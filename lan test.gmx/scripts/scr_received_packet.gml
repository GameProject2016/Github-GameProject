//scr_received_packet(bbuffer)
var buffer = argument[0]; // 1 ,mouse_x, mouse_y

var message_id = buffer_read(buffer,buffer_u8); // mouse_x,mouse_y
switch(message_id){
    case 1:
        var mx = buffer_read(buffer, buffer_u32);
        var my = buffer_read(buffer,buffer_u32);
        instance_create(mx,my,obj_click);
        break;
        
    case 2:
        var otherx = buffer_read(buffer, buffer_u32);
        var othery = buffer_read(buffer,buffer_u32);
        with(obj_other){
        x= otherx;
        y= othery;
        }
        break;
}
