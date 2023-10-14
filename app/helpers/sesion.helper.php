<?php

class SesionHelper{

    public static function init() {
        if (session_status() != PHP_SESSION_ACTIVE) {
            session_start();
        }
    }

    public static function login($usuario){
        SesionHelper::init();
        $_SESSION['USER_ID'] = $usuario->id;
        $_SESSION['USER_USER'] = $usuario->usuario;
        $_SESSION['USER_IS_ADMIN'] = $usuario->rol;
        
    }

    public static function verify() {
        SesionHelper::init();
        if (!isset($_SESSION['USER_ID'])) { //Si el usuario user_id no está seteado, se redirige a la página de logueo
            header('Location: ' . LOGIN); 
            die();
        }
    }

    public static function isAdmin(){
        SesionHelper::init();
        return $_SESSION['USER_IS_ADMIN'] = 1;
    }

    public static function logout(){
        session_destroy();
        header("Location: " . BASE_URL); 
    }

}