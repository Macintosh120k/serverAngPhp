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
        $sql = $pdo->prepare('SELECT idPersonal, nroDi,
        nombrePer,
        genero,
        telefono,
        direccion,
        especialidad,
        fechaRegistro,img,nombreImg FROM personal WHERE idPersonal = :id');

        $sql->bindValue(':id', $_GET['id']);
        $sql->execute();

        $content = array();
        while($row = $sql->fetch(PDO::FETCH_BOTH)){
            $content[] = array(
                'idPersonal' => $row['idPersonal'],
                'nroDi' => $row['nroDi'],
                'nombrePer' => $row['nombrePer'],
                'direccion' => $row['direccion'],
                'genero' => $row['genero'],
                'telefono' => $row['telefono'],
                'especialidad' => $row['especialidad'],
                'fechaRegistro' => $row['fechaRegistro'],
                'img' => 'data:image/png;base64,'. base64_encode($row['img']),
                'nombreImg' => $row['nombreImg'],
            );
        }

        echo json_encode($content);
    } else {
        if (isset($_GET['nroDi']) ||isset($_GET['nombres']) || isset($_GET['apellidoPaterno']) || isset($_GET['apellidoMaterno'])) {
            $sql = $pdo->prepare('SELECT idPersonal, nroDi,
            nombrePer,
            genero,
            telefono,
            direccion,
            especialidad,
            fechaRegistro,
            nombres,
            apellidoPaterno,
            apellidoMaterno  FROM personal WHERE nroDi LIKE  :nroDi AND nombres LIKE  :nombres AND apellidoPaterno LIKE  :apellidoPaterno AND apellidoMaterno LIKE  :apellidoMaterno');
            if (isset($_GET['nroDi'])) {
                $sql->bindValue('nroDi', '%' . $_GET['nroDi'] . '%');
            } else {
                $sql->bindValue('nroDi', '%');
            }
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
            $sql = $pdo->prepare('SELECT idPersonal, nroDi,
            nombrePer,
            genero,
            telefono,
            direccion,
            especialidad,
            fechaRegistro FROM personal');
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
    $sql = $pdo->prepare('SELECT MAX(idPersonal) as last_id FROM personal');
    $sql->execute();
    $sql->setFetchMode(PDO::FETCH_ASSOC);
    $id = $sql->fetchAll();
    $newiD = $id[0]['last_id'] + 1;
    //
    $formData = json_decode($_POST['dataForm']);
    $requiredParam = array();
    foreach ($formData as $key => $valor) {
        if (strlen($valor) == 0) {
            if ($key == 'nroDi' || $key == 'nombrePer'){
                $requiredParam[] = $key . ' es Requerido';
            }
        }
    }
    $foto = null;
    if(isset($_FILES['file']['tmp_name'])){
        $foto = file_get_contents($_FILES['file']['tmp_name']);
    }
    if (count($requiredParam) > 0) {
        echo json_encode($requiredParam);
        header('HTTP/10.4 Client Error 4xx');
        exit;
    } else {
        $sql = 'INSERT INTO personal (idPersonal,nroDi,nombrePer,direccion,telefono,genero,especialidad,img,fechaRegistro,nombres,apellidoPaterno,apellidoMaterno) VALUES (:idPersonal,:nroDi,:nombrePer,:direccion,:telefono,:genero,:especialidad,:img,:fechaRegistro,:nombres,:apellidoPaterno,:apellidoMaterno)';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':idPersonal', $newiD);
        $stmt->bindValue(':nroDi', $formData->nroDi);
        $stmt->bindValue(':nombrePer', $formData->nombrePer);
        $stmt->bindValue(':direccion', $formData->direccion);
        $stmt->bindValue(':telefono', $formData->telefono);
        $stmt->bindValue(':genero', $formData->genero);
        $stmt->bindValue(':especialidad', $formData->especialidad);
        $stmt->bindValue(':img', $foto);
        $stmt->bindValue(':fechaRegistro', $formData->fechaRegistro);
        $stmt->bindValue(':nombres', $formData->nombres);
        $stmt->bindValue(':apellidoPaterno', $formData->apellidoPaterno);
        $stmt->bindValue(':apellidoMaterno', $formData->apellidoMaterno);
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
            if ($key == 'nroDi' || $key == 'nombrePer')
                $requiredParam[] = $key . ' es Requerido';
        }
    }
    if (count($requiredParam) > 0) {
        echo json_encode($requiredParam);
        header('HTTP/10.4 Client Error 4xx');
        exit;
    } else {
        $sql = 'UPDATE personal SET idPersonal = :idPersonal, nroDi=:nroDi, nombrePer=:nombrePer, genero=:genero,direccion=:direccion, telefono=:telefono,especialidad=:especialidad, fechaRegistro=:fechaRegistro,nombres=:nombres,apellidoPaterno=:apellidoPaterno,apellidoMaterno=:apellidoMaterno
        WHERE idPersonal=:idPersonal';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue(':idPersonal', $params->idPersonal);
        $stmt->bindValue(':nroDi', $params->nroDi);
        $stmt->bindValue(':nombrePer', $params->nombrePer);
        $stmt->bindValue(':direccion', $params->direccion);
        $stmt->bindValue(':genero', $params->genero);
        $stmt->bindValue(':telefono', $params->telefono);
        $stmt->bindValue(':especialidad', $params->especialidad);
        $stmt->bindValue(':fechaRegistro', $params->fechaRegistro);
        $stmt->bindValue(':nombres', $params->nombres);
        $stmt->bindValue(':apellidoPaterno', $params->apellidoPaterno);
        $stmt->bindValue(':apellidoMaterno', $params->apellidoMaterno);
        $stmt->execute();

        header('HTTP/1.1 200 OK');
        echo json_encode('Registro Actualizado...!');
        exit;
    }
}
//ELIMINAR
if ($_SERVER['REQUEST_METHOD'] == 'DELETE') {
    if (isset($_GET['id'])) {
        $sql = 'DELETE FROM personal WHERE idPersonal=:id';
        $stmt = $pdo->prepare($sql);
        $stmt->bindValue('id', $_GET['id']);
        $stmt->execute();

        header('HTTP/1.1 200 OK');
        echo json_encode('Registro Eliminado...!');
        exit;
    }
}
