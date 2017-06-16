<?php

$idnota = $_GET["id"] === false ?null:$_GET["id"];
 
    include('conn.php');

 $sql =  "select * from notes where id = $idnota ";
    try{
        $db = new db();
        $db = $db->connect();

        $stmt = $db->query($sql);
        $nota = $stmt->fetchAll(PDO::FETCH_OBJ);
        $db=null;
        
        echo  json_encode($nota) ;//$callback;
     //   echo  json_encode( $actividades);

    }catch(PDOException $e){
        echo '{"error":{"text":'.$e->getMessage().'}';

    }

        
?>