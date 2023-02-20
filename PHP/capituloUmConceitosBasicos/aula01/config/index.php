<?php 
    // session_start();
    // include('config/conexao.php');
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sofia+Sans:wght@600&display=swap" rel="stylesheet">
    <title>Basics</title>
</head>
<style>
    *{
        margin:0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Sofia Sans', sans-serif;
    }

    body{
        display: flex;
        flex-direction: column;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
    }
</style>
<body>
<?php

    $text = "<h1>FATEC REGISTRO</h1>";
    echo $text;
    $x = 13;
    $y = 22;
    echo "<br>";
    echo "<h2>O valor de X é ".$x." e o valor de Y é ".$y."";

    echo "<h2>A soma de $x e $y é " .$x. + $y;

    echo "<h2>A soma de $x e $y é " .($x + $y);

    echo "<h2>A soma de $x e $y é LulaJairzinho";


    
?>
</body>
</html>