<?php
require_once './app/controllers/index.controller.php';

define('BASE_URL', '//' . $_SERVER['SERVER_NAME'] . ':' . $_SERVER['SERVER_PORT'] . dirname($_SERVER['PHP_SELF']) . '/');

$action = 'inicio'; // accion por defecto
if (!empty($_GET['action'])) {
    $action = $_GET['action'];
}


// parsea la accion para separar accion real de parametros
$params = explode('/', $action);

switch ($params[0]) {
    case "inicio":
        $controller = new IndexController();
        $controller->showIndex();
        break;
    default:
        echo "404 Page Not Found";
        break;
}