<?php

    //Get all of something
    function getAll() {
        include("connect.php");
        $queryAll = "SELECT tbl_mini.*, 
                    GROUP_CONCAT(DISTINCT tbl_feature.feature_desc) As feature
                    FROM tbl_mini, tbl_feature, tbl_mini_feature
                    WHERE tbl_mini.mini_id = tbl_mini_feature.mini_id AND tbl_feature.feature_id = tbl_mini_feature.feature_id
                    GROUP BY tbl_mini.mini_id";
        $runAll = mysqli_query($link, $queryAll);
        if($runAll){
            return $runAll;
        }else{
            $error = "From getAll()";
            return $error;
        }
        mysqli_close($link);
    }


?>