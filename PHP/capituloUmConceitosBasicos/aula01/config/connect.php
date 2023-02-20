<?php
	$server = "localhost";
    $user = "root";
    $password = "";
    $dbname = "eliasElias";
    $connect = mysqli_connect($server, $user, $password, $dbname);
    if(!$connect){
        echo "ERROR 1";
    } else {
        echo "Server ON";
    }
?>
