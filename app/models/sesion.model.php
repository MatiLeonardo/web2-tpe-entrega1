<?php

include_once 'config.php';

class SesionModel
{

    private $db;

    function __construct()
    {
        $this->db = $this->connectionDB();
    }



    function connectionDB()
    {
        $db = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=utf8', DB_USER, DB_PASS);
        return $db;
    }

    function getUser($user)
    {
        $query = $this->db->prepare('SELECT * FROM usuarios WHERE usuario = ?');
        $query->execute([$user]);
        $usuario = $query->fetch(PDO::FETCH_OBJ);

        return $usuario;

    }

    function registerUser($user, $password)
    {
        $query = $this->db->prepare('INSERT INTO usuarios (usuario, password) VALUES (?, ?) ');
        $query->execute([$user, $password]);
    }

}