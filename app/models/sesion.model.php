<?php

class SesionModel{

    function connectionDB(){
        $db =  new PDO('mysql:host=localhost;dbname=tpeweb2_cancionesyartistas;charset=utf8','root','');
        return $db;
    }

    function getUser($user){
        $db = $this->connectionDB();
        $query = $db->prepare('SELECT * FROM usuarios WHERE usuario = ?');
        $query->execute([$user]);
        $usuario = $query->fetch(PDO::FETCH_OBJ);

        return $usuario;

    }

    function registerUser($user, $password){
        $db = $this->connectionDB();
        $query = $db->prepare('INSERT INTO usuarios (usuario, password) VALUES = (?,?) ');
        $query->execute([$user, $password]);
    }

}