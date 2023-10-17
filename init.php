<?php
include_once 'config.php';
include_once './app/helpers/db.helper.php';

include_once './app/models/artista.model.php';
include_once './app/models/cancion.model.php';
include_once './app/models/sesion.model.php';

DatabaseHelper::crearDbSiNoExiste(DB_HOST, DB_USER, DB_PASS, DB_NAME);

$artistaModel = new ArtistaModel(); //INSTANCIAMOS PARA EJECUTAR EL _DEPLOY DEL CONSTRUCTOR Y CREAR LAS TABLAS
if (isset($artistaModel)) {
    $cancionModel = new CancionModel();

}
$sesionModel = new SesionModel();