<?php
include_once 'config.php';
include_once '/app/helpers/db.helper.php';

DatabaseHelper::crearDbSiNoExiste(DB_HOST, DB_USER, DB_PASS, DB_NAME);