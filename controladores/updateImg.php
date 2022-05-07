<?php
include '../conexion.php';

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Allow: GET, POST, OPTIONS, PUT, DELETE");
$pdo = new Conexion();
$foto = null;
if (isset($_FILES['file']['tmp_name'])) {
    $foto = file_get_contents($_FILES['file']['tmp_name']);
}
$params = json_decode($_POST['data']);
if ($params->table == 'personal') {
    $sql = 'UPDATE ' . $params->table . ' SET img = :img,nombreImg = :nombreImg WHERE idPersonal=:idPersonal';
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':idPersonal', $params->id);
    $stmt->bindValue(':img', $foto);
    $stmt->bindValue(':nombreImg', $params->nombreImg);
    $stmt->execute();
    header('HTTP/1.1 200 OK');
    echo json_encode('Registro Actualizado...!');
}
if ($params->table == 'alumno') {
    $sql = 'UPDATE ' . $params->table . ' SET img = :img,nombreImg = :nombreImg WHERE idAlumno=:idAlumno';
    $stmt = $pdo->prepare($sql);
    $stmt->bindValue(':idAlumno', $params->id);
    $stmt->bindValue(':img', $foto);
    $stmt->bindValue(':nombreImg', $params->nombreImg);
    $stmt->execute();
    header('HTTP/1.1 200 OK');
    echo json_encode('Registro Actualizado...!');
}
exit;
