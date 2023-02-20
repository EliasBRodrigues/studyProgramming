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
        font-family: 'Sofia Sans', sans-serif;
    }
</style>
<body>
    <div id="container">
        <h1>Forms PHP + HTML</h1>
            <form action="" method="post">
            <label for="name">Usuário</label>
            <input type="text" placeholder="Digite um nome">
            <br>
            <label for="name">Ano de Nascimento</label>
            <input type="text" placeholder="Digite o ano de nascimento-">
            <br>
            <button type="submit">Enviar</button>
            <?php
            $nome;
            $anoNasc;
            $anoAtual = date("Y");
            $text = "ola mundo";

            if(isset($_POST["nome"]) || isset($_POST["anoNasc"])){
                $nome = $_POST["nome"];
                $anoNasc = $_POST["anoNasc"];
                $idade = $anoAtual - $anoNasc;

                echo "<br> $text, $nome seu ano de nascimento é $anoNasc, então sua idade é $idade"; 
            } else {
                "<br>Informações inválidas";
            }
        ?>
        </form>
    </div>
</body>
</html>