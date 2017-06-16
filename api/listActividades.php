<?php
 
 include('conn.php');


$sqlset ="SET lc_time_names = 'es_ES'" ;
 
 $sql =  "select *,
            concat('El ',DATE_FORMAT(timestart, '%W %d de %M a las %h:%i %p') ) as fechah ,
                (TO_DAYS( timestart) - TO_DAYS(CURDATE())) AS `diff`
            from `events`   
            where status=1 
            order by CASE WHEN diff < 0 THEN 1 ELSE 0 END, diff  asc limit 9";
    try{
        $db = new db();
        $db = $db->connect();

        $stmt2 = $db->query($sqlset);
        $stmt = $db->query($sql);
        $actividades = $stmt->fetchAll(PDO::FETCH_OBJ);
        $db=null;
        
        echo  json_encode($actividades) ;//$callback;
     //   echo  json_encode( $actividades);

    }catch(PDOException $e){
        echo $e->getMessage();

    }
 
?>
