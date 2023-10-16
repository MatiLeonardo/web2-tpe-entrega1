<?php
include_once 'config.php';

class CancionModel
{

    private $db;

    public function __construct()
    {
        $this->db = new PDO(
            "mysql:host=" . DB_HOST .
            ";dbname=" . DB_NAME . ";charset=utf8",
            DB_USER,
            DB_PASS
        );
    }

    function _deploy()
    {
        $query = $this->db->query('SHOW TABLES');
        $tables = $query->fetchAll();
        if (count($tables) == 0) {
            $sql = <<<END
    END;
            $this->db->query($sql);
        }
    }


    function getCanciones()
    {
        $query = $this->db->prepare('SELECT * FROM canciones');
        $query->execute();
        $canciones = $query->fetchAll(PDO::FETCH_OBJ);

        return $canciones;
    }


    function getCancion($id)
    {
        $query = $this->db->prepare('SELECT * FROM canciones WHERE id_cancion = ?');
        $query->execute([$id]);
        $cancion = $query->fetch(PDO::FETCH_OBJ);

        return $cancion;
    }

    function addCancion($nombre, $artista, $album, $genero, $duracion, $letra)
    {
        $query = $this->db->prepare('INSERT INTO canciones (nombre_cancion, nombre_artista, album, genero, duracion, letra) VALUES (?, ?, ?, ?, ?, ?)');
        $query->execute([$nombre, $artista, $album, $genero, $duracion, $letra]);

        return $this->db->lastInsertId();

    }

    function removeCancion($id)
    {
        $query = $this->db->prepare('DELETE FROM canciones WHERE id = ?');
        $query->execute([$id]);

    }

    function editCancion($id, $nombre, $artista, $album, $genero, $duracion, $letra)
    {
        $query = $this->db->prepare('UPDATE canciones SET nombre = ?, artista = ?, album = ?, genero = ?, duracion = ?, letra = ? WHERE id = ?');
        $query->execute([$nombre, $artista, $album, $genero, $duracion, $letra, $id]);
    }
}