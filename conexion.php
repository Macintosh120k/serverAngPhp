<?php
    class Conexion extends PDO{
        private $hostBd = 'localhost';
        private $nombreBd = 'colegio';
        private $usuarioBd = 'root';
        private $passwordBd = '12345';

        public function __construct(){
            try {
                parent::__construct('mysql:host=' . $this->hostBd . ';dbname=' . $this->nombreBd . ';charset=utf8',
                $this->usuarioBd, $this->passwordBd, array(PDO:: ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION));
            } catch (PDOException $e) {
                echo 'Error:' . $e->getMessage();
                exit;
            }
        }
    }
?>