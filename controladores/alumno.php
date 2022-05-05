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
        // $sql = $pdo->prepare('SELECT idAlumno, nombres,
        // apellidoPaterno,
        // apellidoMaterno,
        // direccion,
        // telefono,
        // ubigeo,
        // fechaIngreso FROM alumno WHERE idAlumno = :id');

        $sql = $pdo->prepare('SELECT idAlumno, nombres,
        apellidoPaterno,
        apellidoMaterno,
        direccion,
        telefono,
        ubigeo,
        fechaIngreso,img FROM alumno WHERE idAlumno = :id');

        $sql->bindValue(':id', $_GET['id']);
        $sql->execute();

        $content = array();
        while($row = $sql->fetch(PDO::FETCH_BOTH)){
            $content[] = array(
                'idAlumno' => $row['idAlumno'],
                'nombres' => $row['nombres'],
                'apellidoPaterno' => $row['apellidoPaterno'],
                'apellidoMaterno' => $row['apellidoMaterno'],
                'direccion' => $row['direccion'],
                'telefono' => $row['telefono'],
                'ubigeo' => $row['ubigeo'],
                'fechaIngreso' => $row['fechaIngreso'],
                'img' => 'data:image/png;base64,'. base64_encode($row['img']),
            );
        }

        echo json_encode($content);
    } else {
        if (isset($_GET['nombres']) || isset($_GET['apellidoPaterno']) || isset($_GET['apellidoMaterno'])) {
            $sql = $pdo->prepare('SELECT idAlumno, nombres,
            apellidoPaterno,
            apellidoMaterno,
            direccion,
            telefono,
            ubigeo,
            fechaIngreso  FROM alumno WHERE nombres LIKE  :nombres AND apellidoPaterno LIKE  :apellidoPaterno AND apellidoMaterno LIKE  :apellidoMaterno');
            if (isset($_GET['nombres'])) {
                $sql->bindValue('nombres', '%' . $_GET['nombres'] . '%');
            } else {
                $sql->bindValue('nombres', '%');
            }
            if (isset($_GET['apellidoPaterno'])) {
                $sql->bindValue('apellidoPaterno', '%' . $_GET['apellidoPaterno'] . '%');
            } else {
                $sql->bindValue('apellidoPaterno', '%');
            }
            if (isset($_GET['apellidoMaterno'])) {
                $sql->bindValue('apellidoMaterno', '%' . $_GET['apellidoMaterno'] . '%');
            } else {
                $sql->bindValue('apellidoMaterno', '%');
            }

            $sql->execute();
            $sql->setFetchMode(PDO::FETCH_ASSOC);
            header('HTTP/1.1 200 OK');
            echo json_encode($sql->fetchAll());
            exit;
        } else {
            $sql = $pdo->prepare('SELECT idAlumno, nombres,
            apellidoPaterno,
            apellidoMaterno,
            direccion,
            telefono,
            ubigeo,
            fechaIngreso FROM alumno');
        }
        $sql->execute();
        $sql->setFetchMode(PDO::FETCH_ASSOC);
    
        header('HTTP/1.1 200 OK');
        echo json_encode($sql->fetchAll());
    }
}
// AGREGAR
if ($_SERVER['REQUEST_METHOD'] == 'POST') {
    // OBTENER ID
    $sql = $pdo->prepare('SELECT MAX(idAlumno) as last_id FROM alumno');
    $sql->execute();
    $sql->setFetchMode(PDO::FETCH_ASSOC);
    $id = $sql->fetchAll();
    $newiD = $id[0]['last_id'] + 1;
    //
    
    $formData = json_decode($_POST['dataForm']);
    $foto = file_get_contents($_FILES['file']['tmp_name']);
    $requiredParam = array();
    foreach ($formData as $key => $valor) {
        if (strlen($valor) == 0) {
            if ($key == 'nombres' || $key == 'apellidoPaterno' || $key == 'apellidoMaterno')
                $requiredParam[] = $key . ' es Requerido';
        }
    }
    if (count($requiredParam) > 0) {
        echo json_encode($requiredParam);
        header('HTTP/10.4 Client Error 4xx');
        exit;
    } else {
        $sql = 'INSERT INTO alumno (idAlumno,nombres,apellidoPaterno,apellidoMaterno,direccion,telefono,ubigeo,fechaIngreso,img) VALUES (:idAlumno ,:nombres,:apellidoPaterno,:apellidoMaterno,:direccion,:telefono,:ubigeo,:fechaIngreso,:img)';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':idAlumno', $newiD);
        $stmt->bindValue(':nombres', $formData->nombres);
        $stmt->bindValue(':apellidoPaterno', $formData->apellidoPaterno);
        $stmt->bindValue(':apellidoMaterno', $formData->apellidoMaterno);
        $stmt->bindValue(':direccion', $formData->direccion);
        $stmt->bindValue(':telefono', $formData->telefono);
        $stmt->bindValue(':ubigeo', $formData->ubigeo);
        $stmt->bindValue(':fechaIngreso', $formData->fechaIngreso);
        $stmt->bindValue(':img', $foto);
        $stmt->execute();

        header('HTTP/1.1 200 OK');
        echo json_encode('Registro Insertado...!');
        exit;
    }
}
//EDITAR
if ($_SERVER['REQUEST_METHOD'] == 'PUT') {
    $requiredParam = array();
    foreach ($params as $key => $valor) {
        if (strlen($valor) == '0') {
            if ($key == 'nombres' || $key == 'apellidoPaterno' || $key == 'apellidoMaterno')
                $requiredParam[] = $key . ' es Requerido';
        }
    }
    if (count($requiredParam) > 0) {
        echo json_encode($requiredParam);
        header('HTTP/10.4 Client Error 4xx');
        exit;
    } else {
        $sql = 'UPDATE alumno SET idAlumno = :idAlumno, nombres=:nombres, apellidoPaterno=:apellidoPaterno, apellidoMaterno=:apellidoMaterno, direccion=:direccion, telefono=:telefono, ubigeo=:ubigeo, fechaIngreso=:fechaIngreso
        WHERE idAlumno=:idAlumno';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':idAlumno', $params->idAlumno);
        $stmt->bindValue(':nombres', $params->nombres);
        $stmt->bindValue(':apellidoPaterno', $params->apellidoPaterno);
        $stmt->bindValue(':apellidoMaterno', $params->apellidoMaterno);
        $stmt->bindValue(':direccion', $params->direccion);
        $stmt->bindValue(':telefono', $params->telefono);
        $stmt->bindValue(':ubigeo', $params->ubigeo);
        $stmt->bindValue(':fechaIngreso', $params->fechaIngreso);
        $stmt->execute();

        header('HTTP/1.1 200 OK');
        echo json_encode('Registro Actualizado...!');
        exit;
    }
}
//ELIMINAR
if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {
    if (isset($_GET['id'])) {
        $sql = 'DELETE FROM alumno WHERE idAlumno=:id';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue('id', $_GET['id']);
        $stmt->execute();

        header('HTTP/1.1 200 OK');
        echo json_encode('Registro Eliminado...!');
        exit;
    }
}
