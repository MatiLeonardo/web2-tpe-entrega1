<?php

include_once 'config.php';
include_once 'adminUser.php';

class SesionModel
{
    private $adminUser;
    private $password_hashed;
    private $db;

    public function __construct()
    {
        $this->db = new PDO(
            "mysql:host=" . DB_HOST .
            ";dbname=" . DB_NAME . ";charset=utf8",
            DB_USER,
            DB_PASS
        );

        $this->adminUser = getUserAdmin();
        $this->password_hashed = getPasswordAdmin();
        $this->_deploy();

    }

    function _deploy()
    {
        $query = $this->db->query('SHOW TABLES LIKE "usuarios"');
        $tables = $query->fetchAll();
        if (count($tables) == 0) {
            $sql = <<<END
        CREATE TABLE `usuarios` (
            `id` int(11) NOT NULL AUTO_INCREMENT,
            `usuario` varchar(100) NOT NULL,
            `password` varchar(100) NOT NULL,
            `isAdmin` tinyint(1) NOT NULL,
            PRIMARY KEY (`id`)
        ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
END;
            $this->db->query($sql);
            $this->addUsuario($this->adminUser, $this->password_hashed, 1);
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

    function addUsuario($user, $password, $isAdmin)
    {
        $query = $this->db->prepare('INSERT INTO usuarios (usuario, password, isAdmin) VALUES (?, ?, ?)');
        $query->execute([$user, $password, $isAdmin]);
    }
}