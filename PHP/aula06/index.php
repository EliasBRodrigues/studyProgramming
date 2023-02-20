<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Array</title>
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
    <h1>Array</h1>
        <?php
            echo "</br>";

            $numbers = array(1, 2, 3, 4, 5, 6);

            echo "valor posicao 0 do array eh: $numbers[0]<br>";
            echo "valor posicao 1 do array eh: $numbers[1]<br>";
            echo "valor posicao 2 do array eh: $numbers[2]<br>";
            echo "valor posicao 3 do array eh: $numbers[3]<br>";
            echo "valor posicao 4 do array eh: $numbers[4]<br>";
            echo "valor posicao 5 do array eh: $numbers[5]<br>";

            echo "</br>";

            $list = array("açucar", "leite", "sal", "macarrao", "carne", "molho de tomate");

            echo "valor posicao 0 do array eh: $list[0]<br>";
            echo "valor posicao 1 do array eh: $list[1]<br>";
            echo "valor posicao 2 do array eh: $list[2]<br>";
            echo "valor posicao 3 do array eh: $list[3]<br>";
            echo "valor posicao 4 do array eh: $list[4]<br>";
            echo "valor posicao 5 do array eh: $list[5]<br>";

            echo "</br>";

            $mist = array(1, "leite", "sal", 3450, "macarrao", 34.78, "carne");

            echo "valor posicao 0 do array eh: $mist[0]<br>";
            echo "valor posicao 1 do array eh: $mist[1]<br>";
            echo "valor posicao 2 do array eh: $mist[2]<br>";
            echo "valor posicao 3 do array eh: $mist[3]<br>";
            echo "valor posicao 4 do array eh: $mist[4]<br>";
            echo "valor posicao 5 do array eh: $mist[5]<br>";
        ?>
    </div>
</body>
</html>