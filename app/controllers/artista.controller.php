<?php
include_once './app/models/artista.model.php';
include_once './app/views/artista.view.php';

class ArtistaController{

    private $view;
    private $model;

    function __construct(){
        $this->view = new ArtistaView();
        $this->model = new ArtistaModel();
    }

    function showListaArtistas(){
        $artistas = $this->model->getArtistas();
        $this->view->showListaArtistas($artistas);

    }

    function showArtista($nombre_artista){
        $artista = $this->model->getArtista($nombre_artista);
        $this->view->showArtista($artista);
        
    }

}