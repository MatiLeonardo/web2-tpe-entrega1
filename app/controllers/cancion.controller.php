<?php
include_once './app/models/cancion.model.php';
include_once './app/views/cancion.view.php';

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

    

}