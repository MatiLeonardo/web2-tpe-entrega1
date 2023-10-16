<?php

include_once 'config.php';

class SesionModel
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
            $sql = "CREATE TABLE IF NOT EXISTS usuarios (
                id_usuario INT AUTO_INCREMENT PRIMARY KEY,
                usuario VARCHAR(255) NOT NULL,
                password VARCHAR(255) NOT NULL,
                isAdmin TINYINT(1) DEFAULT 0
            )";
            $this->db->query($sql);
        }
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