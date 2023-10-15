<?php
include_once './app/helpers/sesion.helper.php';

class ArtistaView
{

    function showListaArtistas($artistas)
    {

        require './templates/artistList.phtml';
        if (SesionHelper::verify()) {
            require './templates/artistAgregar.phtml';
        }
        require("templates/footer.phtml");

    }

    function showArtista($artista)
    {
        require './templates/artistaInfo.phtml';
        if (SesionHelper::verify()) {
            require './templates/artistEditar.phtml';
        }

        require("templates/footer.phtml");

    }

    function showError($error)
    {
        require './templates/error.phtml';
    }
}