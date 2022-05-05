<?php
include '../conexion.php';

header('Access-Control-Allow-Origin: *');
header("Access-Control-Allow-Headers: X-API-KEY, Origin, X-Requested-With, Content-Type, Accept, Access-Control-Request-Method");
header("Access-Control-Allow-Methods: GET, POST, OPTIONS, PUT, DELETE");
header("Allow: GET, POST, OPTIONS, PUT, DELETE");
$pdo = new Conexion();
$id = json_decode($_POST['id']);
$foto = file_get_contents($_FILES['file']['tmp_name']);

$sql = 'UPDATE alumno SET img = :img
WHERE idAlumno=:idAlumno';

$stmt = $pdo->prepare($sql);
$stmt->bindValue(':idAlumno', $id);
$stmt->bindValue(':img', $foto);
$stmt->execute();

header('HTTP/1.1 200 OK');
echo json_encode('Registro Actualizado...!');
exit;
