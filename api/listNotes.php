<?php
 
 include('conn.php');

 $sql =  "select *,DATE_FORMAT(created,'%d/%m/%Y') AS created2 from notes where up=1 order by created desc limit 12";
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
 
?>

