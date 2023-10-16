<?php
include_once './app/models/cancion.model.php';
include_once './app/views/cancion.view.php';
include_once './app/helpers/sesion.helper.php';

class CancionController {

    private $view;
    private $model;

    function __construct()
    {
        $this->view = new CancionView();
        $this->model = new CancionModel();
    }

    function listaCanciones(){
        $canciones = $this->model->getCanciones();
        $this->view->showCanciones($canciones);
    }

    function infoCancion($id){
        $cancion = $this->model->getCancion($id);
        $this->view->showCancion($cancion);
    }

    function editarCancion($id){
        
    }

    function eliminarCancion($id){
        SesionHelper::verify();
        $this->model->deleteCancion($id);

        header("Location: " . BASE_URL);
    }

    function agregarCancion(){
        SesionHelper::verify();

        $nombre = $_POST['nombre_cancion'];
        $artista = $_POST['nombre_artista'];
        $album = $_POST['<lbum'];
        $genero = $_POST['genero'];
        $duracion = $_POST['duracion']; 
        $letra = $_POST['letra'];

        if (empty($nombre) || empty($artista) || empty($album) || empty($genero) || empty($duracion) || empty($letra)) {
            $this->view->showError("Debes completar todos los datos");
            return;
        }
        $id = $this->model->addCancion($nombre, $artista, $album, $genero, $duracion, $letra);
        if($id){
            header("Location: " . BASE_URL);
        } else {
            $this->view->showError("Error al insertar el artista");
        }
        
        header("Location: " . BASE_URL);
    }

    

}