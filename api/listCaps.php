<?php

 include('conn.php');

 $sql =  "select * from capitulo";
    try{
        $db = new db();
        $db = $db->connect();

        $stmt = $db->query($sql);
        $capitulos = $stmt->fetchAll(PDO::FETCH_OBJ);
        $db=null;
        
        echo  json_encode($capitulos) ;//$callback;
     //   echo  json_encode( $actividades);

    }catch(PDOException $e){
        echo '{"error":{"text":'.$e->getMessage().'}';

    }