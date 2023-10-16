<?php


class CancionView{

    function showCanciones($canciones, $artistas){

        require './templates/header.phtml';

        require './templates/cancionesList.phtml';
        if (SesionHelper::isAdmin()){
            require './templates/agregarCancion.phtml';
        }

        require './templates/footer.phtml';
    }
    
    function showCancion($cancion, $artistas){
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