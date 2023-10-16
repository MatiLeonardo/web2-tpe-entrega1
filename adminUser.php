<?php 

function getUserAdmin(){
    $adminuser = "webadmin";
    return $adminuser;
}

function getPasswordAdmin(){
    $clave = "admin";
    $password_hashed = password_hash ($clave , PASSWORD_BCRYPT ); 
    
    return $password_hashed;
}

?>
