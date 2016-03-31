/* ~~~~~~~~~~~~~~~~~~~~~~~   destroy script   ~~~~~~~~~~~~~~~~~~~~~~~~~~~
destroy('nameofobject') <- will check if it exists then destroy
~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~*/

if(instance_exists(argument0)){
    
    with(argument0){
        instance_destroy();
    }
    
}
