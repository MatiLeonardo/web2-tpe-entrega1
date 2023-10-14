<?php


class CancionView{

    function showCanciones($canciones){

        require './templates/cancionesList.phtml';

    }
    
    function showCancion($cancion){
        require './templates/cancionInfo.phtml';

    }


    function showError($error){
        require './templates/error.phtml';
    }
}