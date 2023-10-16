<?php

class DatabaseHelper
{



    public static function crearDbSiNoExiste($host, $username, $password, $databaseName)
    {
        $pdo = new PDO("mysql:host=$host", $username, $password);
        $query = "CREATE DATABASE IF NOT EXISTS $databaseName";
        $pdo->exec($query);
    }


}