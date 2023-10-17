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
        $this->_deploy();

    }

    function _deploy()
    {
        $query = $this->db->query('SHOW TABLES LIKE "canciones"');
        $tables = $query->fetchAll();
        if (count($tables) == 0) {
            $sql = <<<END
            CREATE TABLE `canciones` (
                `id_cancion` int(11) NOT NULL AUTO_INCREMENT,
                `nombre_artista` varchar(30) DEFAULT NULL,
                `nombre_cancion` varchar(45) NOT NULL,
                `album` varchar(45) NOT NULL,
                `genero` varchar(45) NOT NULL,
                `duracion` varchar(10) NOT NULL,
                `letra` text NOT NULL,
                PRIMARY KEY (`id_cancion`),
                FOREIGN KEY (`nombre_artista`) REFERENCES `artistas` (`nombre_artista`) ON DELETE SET NULL ON UPDATE CASCADE
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
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

    function addCancion($nombre, $nombre_artista, $album, $genero, $duracion, $letra)
    {
        $query = $this->db->prepare('INSERT INTO canciones (nombre_cancion, nombre_artista, album, genero, duracion, letra) VALUES (?, ?, ?, ?, ?, ?)');
        $query->execute([$nombre, $nombre_artista, $album, $genero, $duracion, $letra]);

        return $this->db->lastInsertId();

    }

    function deleteCancion($id)
    {
        $query = $this->db->prepare('DELETE FROM canciones WHERE id_cancion = ?');
        $query->execute([$id]);
    }

    function editCancion($nombre, $artista, $album, $genero, $duracion, $letra, $id)
    {
        $query = $this->db->prepare('UPDATE canciones SET nombre_cancion = ?, nombre_artista = ?, album = ?, genero = ?, duracion = ?, letra = ? WHERE id_cancion = ?');
        $realizado = $query->execute([$nombre, $artista, $album, $genero, $duracion, $letra, $id]);

        return $realizado;
    }
}