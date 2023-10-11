<?php


class IndexView{

    function showListaArtistas($artistas){
        $artists = $artistas;

        require './templates/artistList.phtml';

    }
}