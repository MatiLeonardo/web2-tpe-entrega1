<?php


class CancionView{

    function showCanciones($canciones){
        require './templates/header.phtml';
        require './templates/cancionesList.phtml';
        if (SesionHelper::isAdmin()) {
            require './templates/administrarCanciones.phtml';
        }
        require("templates/footer.phtml");

    }
    
    function showCancion($cancion){
        require './templates/cancionInfo.phtml';
        if (SesionHelper::isAdmin()) {
            require './templates/editarCancion.phtml';
        }
        require("templates/footer.phtml");
    }


    function showError($error){
        require './templates/error.phtml';
    }
}