<?php

class SesionView{

    function showLogin($error = null){

        require './templates/login.phtml';

    }

    function showRegister($error = null){
        require './templates/register.phtml';
    }
}