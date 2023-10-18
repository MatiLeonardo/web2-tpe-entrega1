<?php
include_once 'config.php';
include_once './app/helpers/db.helper.php';

include_once './app/models/artista.model.php';
include_once './app/models/cancion.model.php';
include_once './app/models/sesion.model.php';

DatabaseHelper::crearDbSiNoExiste(DB_HOST, DB_USER, DB_PASS, DB_NAME);

if (!isset($artistaModel)) {
    $artistaModel = new ArtistaModel();
}
if (!isset($cancionModel)) {
    $cancionModel = new CancionModel();
}
if (!isset($sesionModel)) {
    $sesionModel = new SesionModel();
}