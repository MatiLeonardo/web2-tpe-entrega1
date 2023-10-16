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
        $_SESSION['USER_IS_ADMIN'] = $usuario->rol;

    }

    public static function verify()
    {
        SesionHelper::init();
        if (!isset($_SESSION['USER_ID'])) {
            header('Location: ' . LOGIN);
            die();
        }
    }

    public static function logout()
    {
        SesionHelper::init();
        session_destroy();
        header("Location: " . BASE_URL);
    }

    
}