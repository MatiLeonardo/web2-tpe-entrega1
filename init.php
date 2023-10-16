<?php
include_once 'config.php';
include_once './app/helpers/db.helper.php';

include_once './app/models/artista.model.php';
include_once './app/models/cancion.model.php';
include_once './app/models/sesion.model.php';

DatabaseHelper::crearDbSiNoExiste(DB_HOST, DB_USER, DB_PASS, DB_NAME);

$sesionModel = new SesionModel();
$artistaModel = new ArtistaModel(); //INSTANCIAMOS PARA EJECUTAR EL _DEPLOY DEL CONSTRUCTOR Y CREAR LAS TABLAS
$cancionModel = new CancionModel();
