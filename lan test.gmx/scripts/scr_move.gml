///scr_move()

hsp = 10 * (key_left + key_right);
vsp = 10 * (key_up + key_down);

//Movement and Collision
//horizontal collision
if(place_meeting(x+hsp,y,obj_Wall)){

    while(!place_meeting(x+sign(hsp),y,obj_Wall)){
        x+=sign(hsp);
    }
    hsp = 0;

}
x+=hsp;

//Vertical collision
if place_meeting(x,y+vsp,obj_Wall){

    while(!place_meeting(x,y+sign(vsp),obj_Wall)){
        y += sign(vsp);
    }
    vsp = 0;

}
y+=vsp;

//keep inside room
if(instance_exists(obj_client)){
    if(obj_client.x < obj_client.sprite_width / 2){
        obj_client.x = obj_client.sprite_width / 2;
    }
    if(obj_client.y < obj_client.sprite_height / 2){
        obj_client.y = obj_client.sprite_height / 2;
    }
    if(obj_client.x > (room_width - obj_client.sprite_width / 2)){
        obj_client.x = room_width - obj_client.sprite_width / 2;
    }
    if(obj_client.y = (room_height - obj_client.sprite_height / 2)){
        obj_client.y = room_height - obj_client.sprite_height / 2;
    }
}
if(instance_exists(obj_server)){
    if(obj_server.x < obj_server.sprite_width / 2){
        obj_server.x = obj_server.sprite_width / 2;
    }
    if(obj_server.y < obj_server.sprite_height / 2){
        obj_server.y = obj_server.sprite_height / 2;
    }
    if(obj_server.x > (room_width - obj_server.sprite_width / 2)){
        obj_server.x = room_width - obj_server.sprite_width / 2;
    }
    if(obj_server.y = (room_height - obj_server.sprite_height / 2)){
        obj_server.y = room_height - obj_server.sprite_height / 2;
    }
}
