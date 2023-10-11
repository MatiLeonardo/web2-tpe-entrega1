<?php

Class IndexModel{

    function connectionDB(){
        $db =  new PDO('mysql:host=localhost;dbname=tpeweb2_cancionesyartistas;charset=utf8','root','');
        return $db;
    }

    function getArtistas(){
        $db =  $this->connectionDB();
        $query = $db->prepare('SELECT * from artistas');
        $query->execute();
        $artistas = $query->fetchAll(PDO::FETCH_OBJ);

        return $artistas;
    }

}