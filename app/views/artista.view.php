<?php
include_once './app/helpers/sesion.helper.php';

class ArtistaView
{


    function showListaArtistas($artistas)
    {

        require './templates/artistList.phtml';
        if (SesionHelper::isAdmin()) {
            require './templates/artistAgregar.phtml';
        }
        require("templates/footer.phtml");

    }

    function showArtista($artista, $canciones)
    {
        require './templates/artistaInfo.phtml';
        require './templates/cancionesList.phtml';

        if (SesionHelper::isAdmin()) {
            require './templates/artistEditar.phtml';
        }

        require("templates/footer.phtml");

    }

    function showError($error)
    {
        require './templates/error.phtml';
    }
}