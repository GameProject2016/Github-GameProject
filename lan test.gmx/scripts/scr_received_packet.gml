//scr_received_packet(bbuffer)
var buffer = argument[0]; // 1 ,mouse_x, mouse_y

var message_id = buffer_read(buffer,buffer_u8); // mouse_x,mouse_y
switch(message_id){
    case 1: //create click
        var mx = buffer_read(buffer, buffer_u32);
        var my = buffer_read(buffer,buffer_u32);
        instance_create(mx,my,obj_click);
        break;
        
    case 2: //set others position
        var otherx = buffer_read(buffer, buffer_u32);
        var othery = buffer_read(buffer,buffer_u32);
        with(obj_other){
        x= otherx;
        y= othery;
        }
        break;
    
    case 3: 
        var time_min = buffer_read(buffer, buffer_u32);
        var time_sec = buffer_read(buffer, buffer_u32);
        with(obj_countdown){
            minutes = time_min;
            seconds = time_sec;
            
        }
        break;
        
    case 4: //create others bullet
        var mx = buffer_read(buffer, buffer_u32);
        var my = buffer_read(buffer,buffer_u32);
        with(instance_create(obj_other.x + 1,obj_other.y - 51,obj_bullet)){
        direction = point_direction(obj_other.x,obj_other.y,mx,my);
        }
        break;
        
    case 5: //set others colour
        var index = buffer_read(buffer,buffer_u32);
        obj_other.image_index = index;
        break;
        
    case 6: //create walls in client
        var wx = buffer_read(buffer, buffer_u32); //wall x
        var wy = buffer_read(buffer,buffer_u32); //wall y
        wall = instance_create(0,0,obj_Wall);
        wall.x=wx;
        wall.y=wy;
        break;
        
    case 7: //create zombie in client
        var zx = buffer_read(buffer, buffer_u32); //zonbie x
        var zy = buffer_read(buffer,buffer_u32); //zonbie y
        instance_create(zx,zy,obj_Zombie);
        break;
        
    case 8: //create grenade
        var mx = buffer_read(buffer, buffer_u32); //zonbie x
        var my = buffer_read(buffer,buffer_u32); //zonbie y
        with(instance_create(obj_other.x + 1,obj_other.y - 51,obj_grenade)){
        direction = point_direction(obj_other.x,obj_other.y,mx,my);
        the_target = instance_create(mx,my,obj_target);
        the_target.image_alpha = 0;
        }
        break;
        
    case 9: //recieve and set others name
        var othername = buffer_read(buffer,buffer_string); //name
        obj_other.name = othername;
        break;
        
}
