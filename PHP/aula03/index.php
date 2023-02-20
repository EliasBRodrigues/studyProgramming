<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sofia+Sans:wght@700&display=swap" rel="stylesheet">
    <title>Document</title>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Sofia Sans', sans-serif;
    }
    body{
        display: flex;
        justify-content: center;
        align-items: center;
        min-height: 100vh;
    }
    #container{
        background-color: #aaa;
        max-width: 500px;
        padding: 30px;
        width: 100%;
        margin: 0 15px;
        border-radius: 10px;
    }
    form{
        display: flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
        padding: 30px;
    }
    input{
        width: 30%;
        border-radius: 10px;
        margin: 10px;
    }
</style>
<body>
    <div id="container">
    <h1>Forms PHP + HTML</h1>
        <form action="index.php" method="post">
        <label for="name">Digite ate quando contar</label>
        <br>
        <input type="text" name="number">
        <input type="submit" id="idEnviar" value="ENVIAR">
    <?php
        if(isset($_POST["number"])){
            echo "<br>loop for </br>";
            for($cont = 0; $cont <= $_POST["number"]; $cont++){
                echo $cont .", ";
            }
            echo "<br> Loop While </br>";
            $cont = 0;

            while($cont <= $_POST["number"]){
                echo $cont .", ";
                $cont++;
            }
            $cont = 0;
            echo "<br>loop doWhile</br>";

            do{
                echo $cont. ", ";
                $cont++;
            }
            while($cont <= $_POST["number"]);
        }
    ?>
    </form>
    </div>
</body>
</html>