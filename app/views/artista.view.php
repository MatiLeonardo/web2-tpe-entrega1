<?php


class ArtistaView{

    function showListaArtistas($artistas){

        require './templates/artistList.phtml';

    }
    
    function showArtista($artista){
        require './templates/artistaInfo.phtml';

    }

    function showError($error){
        require './templates/error.phtml';
    }
}