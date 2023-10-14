<?php

Class CancionModel{

    function connectionDB(){
        $db =  new PDO('mysql:host=localhost;dbname=tpeweb2_cancionesyartistas;charset=utf8','root','');
        return $db;
    }

    function getCanciones(){
        $db =  $this->connectionDB();
        $query = $db->prepare('SELECT * from canciones');
        $query->execute();
        $canciones = $query->fetchAll(PDO::FETCH_OBJ);

        return $canciones;
    }

    function getCancion($id){
        $db = $this->connectionDB();
        $query = $db->prepare('SELECT * from canciones WHERE id = ?');
        $query->execute([$id]);
        $cancion = $query->fetch(PDO::FETCH_OBJ);
        
        return $cancion;
    }

    function addCancion($nombre, $artista, $album, $genero, $duracion, $letra){
        $db = $this->connectionDB();
        $query = $db->prepare('INSERT INTO canciones (nombre_cancion, nombre_artista, album, genero, duracion, letra) VALUES (?, ?, ?, ?, ?, ?)');
        $query->execute([$nombre, $artista, $album, $genero, $duracion, $letra]);

        return $db->lastInsertId();

    }

    function removeCancion($id){
        $db = $this->connectionDB();
        $query = $db->prepare('DELETE FROM canciones WHERE id = ?');
        $query->execute([$id]);

    }

    function editCancion($id, $nombre, $artista, $album, $genero, $duracion, $letra){
        $db = $this->connectionDB();
        $query = $db->prepare('UPDATE canciones SET nombre = ?, artista = ?, album = ?, genero = ?, duracion = ?, letra = ? WHERE id = ?');
        $query->execute([$nombre, $artista, $album, $genero, $duracion, $letra, $id]);
    }
}