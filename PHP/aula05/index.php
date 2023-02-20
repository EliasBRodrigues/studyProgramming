<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>String</title>
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
        text-align: center;
    }
</style>
<body>
    <div id="container">
        <?php
            $name = "elias";
            $secondName = "Elias";

            echo "o nome digitado foi ($name)<br>";
            echo "o nome digitado foi ($secondName)<br>";
            echo "o nome digitado foi ($name $secondName)<br>";

            echo "contando caracteres<br>";
            echo "nome<br>" .strlen($name)."</br>";
            echo "sobrenome<br>".strlen($secondName)."</br>";

            $completedName = $name.$secondName;
            echo "nome completo<br>" .strlen($completedName)."</br>";


            echo "<br>removendo espaços</br>";
            echo "total de caracteres sem espaços: " .strlen(trim($completedName))."</br>";
        ?>
    </div>
</body>
</html>