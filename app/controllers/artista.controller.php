<?php
include_once './app/models/artista.model.php';
include_once './app/views/artista.view.php';

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
        $nombre = $_POST['artist-name'];
        $desc = $_POST['artist-desc'];
        $edad = $_POST['artist-edad'];
        $nac = $_POST['artist-nac'];

        if (empty($nombre) || empty($desc) || empty($edad) || empty($nac)) {
            $this->view->showError("Debes completar todos los datos");
        }

        $id = $this->model->addArtista($nombre, $desc, $edad, $nac);
        if ($id) {
            header("Location: " . BASE_URL);
        } else {
            $this->view->showError("Error al insertar artista");
        }

    }

    function removeArtist($id)
    {
        $this->model->removeArtista($id);

        header("Location: " . BASE_URL);
    }

    function editArtist($id)
    {
        $nombre = $_POST['artist-name'];
        $desc = $_POST['artist-desc'];
        $edad = $_POST['artist-edad'];
        $nac = $_POST['artist-nac'];

        if (empty($nombre) || empty($desc) || empty($edad) || empty($nac)) {
            $this->view->showError("Debes completar todos los datos");
        }

        $ide = $this->model->editArtista($id);
        if ($ide) {
            header("Location: " . BASE_URL);
        } else {
            $this->view->showError("Error al editar artista");
        }


    }

}