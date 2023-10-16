<?php

Class ArtistaModel{

    function connectionDB(){
        $db =  new PDO('mysql:host=localhost;dbname=tpeweb2;charset=utf8','root','');
        return $db;
    }

    function getArtistas(){
        $db =  $this->connectionDB();
        $query = $db->prepare('SELECT * from artistas');
        $query->execute();
        $artistas = $query->fetchAll(PDO::FETCH_OBJ);

        return $artistas;
    }

    function getArtista($id){
        $db = $this->connectionDB();
        $query = $db->prepare('SELECT * from artistas WHERE id = ?');
        $query->execute([$id]);
        $artista = $query->fetch(PDO::FETCH_OBJ);
        
        return $artista;
    }

    function addArtista($nombre, $descripcion, $edad, $nacionalidad){
        $db = $this->connectionDB();
        $query = $db->prepare('INSERT INTO artistas (nombre_artista, descripcion, edad, nacionalidad) VALUES (?, ?, ?, ?)');
        $query->execute([$nombre, $descripcion, $edad, $nacionalidad]);

        return $db->lastInsertId();

    }

    function removeArtista($id){
        $db = $this->connectionDB();
        $query = $db->prepare('DELETE FROM artistas WHERE id = ?');
        $query->execute([$id]);

    }

    function editArtista($id, $nombre, $descripcion, $edad, $nacionalidad){
        $db = $this->connectionDB();
        $query = $db->prepare('UPDATE artistas SET nombre = ?, descripcion = ?, edad = ?, nacionalidad = ? WHERE id = ?');
        $realizado = $query->execute([$nombre, $descripcion, $edad, $nacionalidad, $id]);

        return $realizado;
    }
}