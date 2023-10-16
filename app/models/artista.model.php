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
        $query = $this->db->query('SHOW TABLES LIKE "artistas"');
        $tables = $query->fetchAll();
        if (count($tables) == 0) {
            $sql = 'CREATE TABLE `artistas` (
                `id` int(11) NOT NULL AUTO_INCREMENT,
                `nombre_artista` varchar(30) DEFAULT NULL,
                `descripcion` varchar(800) NOT NULL,
                `edad` int(11) NOT NULL,
                `nacionalidad` varchar(45) NOT NULL,
                PRIMARY KEY (`id`)
            ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci';
            $this->db->query($sql);

            $this->addArtista('Bad Bunny', 'Descripción 1', 25, 'Puerto Rico');
            $this->addArtista('Arcangel', 'Descripción 2', 30, 'Puerto Rico');
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