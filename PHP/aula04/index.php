<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Switch</title>
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
    <form action="" method="post">
        <label>Digite um numero</label>
        <input type="number" name="number" placeholder="Numero">
        <input type="submit" name="btn_verificar" id="idVerificar" value="Verificar">

        <?php
        $num;
        $resto;
        if(isset($_POST['number'])){
            $num = $_POST['number'];
            $resto = ($num % 2);
            switch($resto){
                case 0:
                    echo "<br>numero digitado $num é par</br>";
                    break;
            
                case 1:
                    echo "<br>numero digitado $num eh impar</br>";
                    break;
            }
        }
        
            
        ?>
    </form>
    </div>
</body>
</html>