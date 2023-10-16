<?php


class CancionView{

    function showCanciones($canciones){

        require './templates/header.phtml';
        require './templates/cancionesList.phtml';
        require './templates/footer.phtml';
    }
    
    function showCancion($cancion){
        require './templates/cancionInfo.phtml';

    }


    function showError($error){
        require './templates/error.phtml';
    }
}