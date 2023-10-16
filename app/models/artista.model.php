<?php
include_once 'config.php';

class ArtistaModel
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
        $this->_deploy();

    }

    function _deploy()
    {
        $query = $this->db->query('SHOW TABLES');
        $tables = $query->fetchAll();
        if (count($tables) == 0) {
            $sql = 'CREATE TABLE IF NOT EXISTS artistas (
            id INT AUTO_INCREMENT PRIMARY KEY,
            nombre_artista VARCHAR(255) NOT NULL,
            descripcion TEXT,
            edad INT,
            nacionalidad VARCHAR(50)
        )';
            $this->db->query($sql);
        }
    }



    function getArtistas()
    {
        $query = $this->db->prepare('SELECT * from artistas');
        $query->execute();
        $artistas = $query->fetchAll(PDO::FETCH_OBJ);

        return $artistas;
    }

    function getArtista($id)
    {
        $query = $this->db->prepare('SELECT * from artistas WHERE id = ?');
        $query->execute([$id]);
        $artista = $query->fetch(PDO::FETCH_OBJ);

        return $artista;
    }

    function getCancionesPorArtista($nombreartista)
    {
        $query = $this->db->prepare('SELECT * FROM canciones JOIN artistas ON canciones.nombre_artista = artistas.nombre_artista WHERE artistas.nombre_artista = ?');
        $query->execute([$nombreartista]);
        $canciones = $query->fetchAll(PDO::FETCH_OBJ);

        return $canciones;
    }

    function addArtista($nombre, $descripcion, $edad, $nacionalidad)
    {
        $query = $this->db->prepare('INSERT INTO artistas (nombre_artista, descripcion, edad, nacionalidad) VALUES (?, ?, ?, ?)');
        $query->execute([$nombre, $descripcion, $edad, $nacionalidad]);

        return $this->db->lastInsertId();

    }

    function removeArtista($id)
    {
        $query = $this->db->prepare('DELETE FROM artistas WHERE id = ?');
        $query->execute([$id]);
    }

    function editArtista($id, $nombre, $descripcion, $edad, $nacionalidad)
    {
        $query = $this->db->prepare('UPDATE artistas SET nombre_artista = ?, descripcion = ?, edad = ?, nacionalidad = ? WHERE id = ?');
        $realizado = $query->execute([$nombre, $descripcion, $edad, $nacionalidad, $id]);

        return $realizado;
    }
}