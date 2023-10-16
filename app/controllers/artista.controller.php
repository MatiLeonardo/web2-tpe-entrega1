<?php
include_once './app/models/artista.model.php';
include_once './app/views/artista.view.php';
include_once './app/helpers/sesion.helper.php';

class ArtistaController
{

    private $view;
    private $model;

    function __construct()
    {
        $this->view = new ArtistaView();
        $this->model = new ArtistaModel();
    }

    function showListaArtistas()
    {
        $artistas = $this->model->getArtistas();
        $this->view->showListaArtistas($artistas);

    }

    function showArtista($id)
    {
        $artista = $this->model->getArtista($id);
        $this->view->showArtista($artista);

    }

    function addArtista()
    {
        SesionHelper::verify();
        $nombre = $_POST['artist-name'];
        $desc = $_POST['artist-desc'];
        $edad = $_POST['artist-edad'];
        $nac = $_POST['artist-nac'];

        if (empty($nombre) || empty($desc) || empty($edad) || empty($nac)) {
            $this->view->showError("Debes completar todos los datos");
            return;
        }

        $id = $this->model->addArtista($nombre, $desc, $edad, $nac);
        if($id){
            header("Location: " . BASE_URL);
        } else {
            $this->view->showError("Error al insertar el artista");
        }

        header("Location: " . BASE_URL);
    }

    function removeArtist($id)
    {
        SesionHelper::verify();
        $this->model->removeArtista($id);

        header("Location: " . BASE_URL);
    }

    function editArtist($id)
    {
        SesionHelper::verify();
        $nombre = $_POST['artist-name'];
        $desc = $_POST['artist-desc'];
        $edad = $_POST['artist-edad'];
        $nac = $_POST['artist-nac'];

        if (empty($nombre) || empty($desc) || empty($edad) || empty($nac)) {
            $this->view->showError("Debes completar todos los datos");
            return;
        }
        $realizado = $this->model->editArtista($id, $nombre, $desc, $edad, $nac);
        if($realizado){
        header("Location: " . BASE_URL);
        } else{
            $this->view->showError("Error al editar el artista");
        }
    }

}