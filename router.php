<?php
require_once './app/controllers/artista.controller.php';
require_once './app/controllers/sesion.controller.php';

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');
define("LOGIN", BASE_URL . 'login');


$action = 'inicio'; // accion por defecto
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}


// parsea la accion para separar accion real de parametros
$params = explode('/', $action);

switch ($params[0]) {
    case "inicio":
        $controller = new ArtistaController();
        $controller->showListaArtistas();
        break;
    case "artista":
        $controller = new ArtistaController();
        $controller->showArtista($params[1]);
        break;
    case "login":
        $controller = new SesionController();
        $controller->showLogin();
        break;
    case "registerurl":
        $controller = new SesionController();
        $controller->showRegister();
        break;
    case "registrar":
        $controller = new SesionController();
        $controller->register();
        break;
    case "addArtista":
        $controller = new ArtistaController();
        $controller->addArtista();
    case "removeArtista":
        $controller = new ArtistaController();
        $controller->removeArtist($params[1]);
    case "editArtista":
        $controller = new ArtistaController();
        $controller->editArtist($params[1]);
        break;
    default:
        echo "404 Page Not Found";
        break;
}