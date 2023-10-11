<?php
include_once './app/models/index.model.php';
include_once './app/views/index.view.php';

class IndexController{

    private $view;
    private $model;

    function __construct(){
        $this->view = new IndexView();
        $this->model = new IndexModel();
    }

    function showIndex(){
        $artistas = $this->model->getArtistas();
        $this->view->showListaArtistas($artistas);

    }


}