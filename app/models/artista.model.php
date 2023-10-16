<?php
include_once 'config.php';

Class ArtistaModel{

    private $db;

    function __construct(){
        $this->db = $this->connectionDB();
    }

    function connectionDB(){
        $db = new PDO('mysql:host=' . DB_HOST . ';dbname=' . DB_NAME . ';charset=utf8', DB_USER, DB_PASS);
        return $db;
    }

    function getArtistas(){
        $query = $this->db->prepare('SELECT * from artistas');
        $query->execute();
        $artistas = $query->fetchAll(PDO::FETCH_OBJ);

        return $artistas;
    }

    function getArtista($id){
        $query = $this->db->prepare('SELECT * from artistas WHERE id = ?');
        $query->execute([$id]);
        $artista = $query->fetch(PDO::FETCH_OBJ);
        
        return $artista;
    }

    function addArtista($nombre, $descripcion, $edad, $nacionalidad){
        $query = $this->db->prepare('INSERT INTO artistas (nombre_artista, descripcion, edad, nacionalidad) VALUES (?, ?, ?, ?)');
        $query->execute([$nombre, $descripcion, $edad, $nacionalidad]);

        return $this->db->lastInsertId();

    }

    function removeArtista($id){
        $query = $this->db->prepare('DELETE FROM artistas WHERE id = ?');
        $query->execute([$id]);

    }

    function editArtista($id, $nombre, $descripcion, $edad, $nacionalidad){
        $query = $this->db->prepare('UPDATE artistas SET nombre = ?, descripcion = ?, edad = ?, nacionalidad = ? WHERE id = ?');
        $realizado = $query->execute([$nombre, $descripcion, $edad, $nacionalidad, $id]);

        return $realizado;
    }
}