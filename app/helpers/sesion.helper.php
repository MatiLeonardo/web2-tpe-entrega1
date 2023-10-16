<?php

class SesionHelper
{

    public static function init()
    {
        if (session_status() != PHP_SESSION_ACTIVE) {
            session_start();
        }
    }

    public static function login($usuario)
    {
        SesionHelper::init();
        $_SESSION['USER_ID'] = $usuario->id;
        $_SESSION['USERNAME'] = $usuario->usuario;
        $_SESSION['ISADMIN'] = $usuario->isAdmin; //ADMIN = 1
    }

    public static function verify()
    {
        SesionHelper::init();
        if ($_SESSION['ISADMIN'] != 1) {
            SesionHelper::logout();
            header("Location: " . LOGIN); //SI SE VERIFICA QUE NO ES ADMIN(por ejemplo si el user sabe el path para eliminar algo), SE CIERRA SESION Y SE MANDA A LOGIN
            die();
        }

    }

    public static function isLogged(){ // ESTA FUNCION SE UTILIZA PARA RETORNAR TRUE O FALSE Y MOSTRAR COSAS EN LA VISTA
        SesionHelper::init();
        return isset($_SESSION['USER_ID']);
    }

    public static function isAdmin() // ESTA FUNCION SE UTILIZA PARA RETORNAR TRUE O FALSE Y MOSTRAR COSAS EN LA VISTA
    {
        SesionHelper::init();
        if ( isset($_SESSION['ISADMIN']) && $_SESSION['ISADMIN'] == 1) {
            return true;
        } else {
            return false;
        }
    }

    public static function logout()
    {
        SesionHelper::init();
        session_destroy();
        header("Location: " . BASE_URL);
    }


}