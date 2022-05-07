<?php
include '../conexion.php';

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Allow: GET, POST, OPTIONS, PUT, DELETE");

$json = @file_get_contents('php://input');
$params = json_decode($json);
$pdo = new Conexion();
if ($_SERVER['REQUEST_METHOD'] == 'GET') {
    if (isset($_GET['id'])) {
        $sql = $pdo->prepare('SELECT * FROM seccion WHERE idSeccion = :id');
        $sql->bindValue(':id', $_GET['id']);
    } else {
        if (isset($_GET['nombreSeccion']) || isset($_GET['idSeccion'])) {
            $sql = $pdo->prepare('SELECT * FROM seccion WHERE nombreSeccion LIKE  :nombreSeccion AND idSeccion LIKE  :idSeccion');
            if (isset($_GET['idSeccion'])) {
                $sql->bindValue('idSeccion', '%' . $_GET['idSeccion'] . '%');
            } else {
                $sql->bindValue('idSeccion', '%');
            }
            if (isset($_GET['nombreSeccion'])) {
                $sql->bindValue('nombreSeccion', '%' . $_GET['nombreSeccion'] . '%');
            } else {
                $sql->bindValue('nombreSeccion', '%');
            }

            $sql->execute();
            $sql->setFetchMode(PDO::FETCH_ASSOC);
            header('HTTP/1.1 200 OK');
            echo json_encode($sql->fetchAll());
            exit;
        } else {
            $sql = $pdo->prepare('SELECT * FROM seccion');
        }
    }
    $sql->execute();
    $sql->setFetchMode(PDO::FETCH_ASSOC);

    header('HTTP/1.1 200 OK');
    echo json_encode($sql->fetchAll());
}
// AGREGAR
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // OBTENER ID
    $sql = $pdo->prepare('SELECT MAX(idSeccion) as last_id FROM seccion');
    $sql->execute();
    $sql->setFetchMode(PDO::FETCH_ASSOC);
    $id = $sql->fetchAll();
    $newiD = $id[0]['last_id'] + 1;
    //
    $requiredParam = array();
    foreach ($params as $key => $valor) {
        if (strlen($valor) == 0) {
            if ($key == 'nombreSeccion')
                $requiredParam[] = $key . ' es Requerido';
        }
    }
    if (count($requiredParam) > 0) {
        echo json_encode($requiredParam);
        header('HTTP/10.4 Client Error 4xx');
        exit;
    } else {
        $sql = 'INSERT INTO seccion (idSeccion,nombreSeccion) VALUES (:idSeccion, :nombreSeccion)';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':idSeccion', $newiD);
        $stmt->bindValue(':nombreSeccion', $params->nombreSeccion);
        $stmt->execute();

        header('HTTP/1.1 200 OK');
        echo json_encode('Registro Insertado...!');
        exit;
    }
}
//EDITAR
if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
    $sql = 'UPDATE seccion SET idSeccion = :idSeccion, nombreSeccion=:nombreSeccion WHERE idSeccion=:idSeccion';
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':idSeccion', $params->idSeccion);
    $stmt->bindValue(':nombreSeccion', $params->nombreSeccion);
    $stmt->execute();

    header('HTTP/1.1 200 OK');
    echo json_encode('Registro Actualizado...!');
    exit;
}
//ELIMINAR
if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {
    if (isset($_GET['id'])) {
        $sql = 'DELETE FROM seccion WHERE idSeccion=:id';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue('id', $_GET['id']);
        $stmt->execute();

        header('HTTP/1.1 200 OK');
        echo json_encode('Registro Eliminado...!');
        exit;
    }
}
