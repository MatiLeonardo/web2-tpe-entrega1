<?php
include_once './app/views/sesion.view.php';
include_once './app/models/sesion.model.php';
include_once './app/helpers/sesion.helper.php';
class SesionController{

    private $view;
    private $model;

    function __construct(){
        $this->view = new SesionView();
        $this->model = new SesionModel();
    }

    function showLogin(){
        $this->view->showLogin();
    }

    function showRegister(){
        $this->view->showRegister();
    }

    function register(){

        if(!empty($_POST['user-register']) && !empty($_POST['password-register'])){
            $user = $_POST['user-register'];
            $password = password_hash($_POST['password-register'], PASSWORD_BCRYPT);

            $this->model->registerUser($user, $password);
            header('Location:' . LOGIN);
        }
    }

    function auth(){
        $user = $_POST['usuario'];
        $password = $_POST['password'];

        if(empty($user) || empty($password)){
            $this->view->showLogin("Completa todos los datos para iniciar sesión");
            return;
        }

        $usuario = $this->model->getUser($user);
        if($usuario && password_verify($password, $usuario->password)){

            SesionHelper::login($usuario);
            header('Location: ' . BASE_URL);
        }else {
            $this->view->showLogin("Usuario invalido");
        }

    }

    function logout(){
        SesionHelper::logout(); 
    }

}