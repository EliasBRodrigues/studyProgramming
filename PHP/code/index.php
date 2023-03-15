<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@700&display=swap" rel="stylesheet">
    <title>DolarReal</title>
</head>
<style>
    *{
        margin: 0;
        padding: 0;
        box-sizing: border-box;
        font-family: 'Josefin Sans', sans-serif;
        color: #fff;
    }

    body{
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        justify-content: center;
        min-height: 100vh;
        background: url("https://th.bing.com/th/id/OIP.8ACKKJNo1hm6BI3L8p3EYQHaDo?w=326&h=171&c=7&r=0&o=5&dpr=1.3&pid=1.7");
        
    }
    #container{
        background-color: yellow;
        position: relative;
        margin: 45px;
        border-radius: 16px;
        padding: 30px;
        background: url("https://th.bing.com/th/id/R.7ff8b0cea0fcf53098673b2b26f05625?rik=XFg%2f3%2bOypUVopA&pid=ImgRaw&r=0");
    }
    form{
        display: flex;
        align-items: center;
        justify-content: center;
        flex-direction: column;
        padding: 30px;
    }

    input{
        outline: none;
        font-size: 14px;
        font-weight: 400;
        color: #333;
        border-radius: 10px;
        border: 1px solid #aaa;
        padding: 0 15px;
        height: 30px;
        margin: 5px 0;
    }

    .button{
        margin-top: 20px;
        width: 50%;
        height: 30px;
        border: 1px solid white;
        cursor: pointer;
        background-color: red;
        color: white;
        border-radius: 15px;
    }

    .select{
        margin-top: 10px;
        border-radius: 16px;
        border: 1px solid white;
        width: 70%;
        height: 30px;
        text-align: center;
        background-color: slategrey;
    }

</style>
<body>
    <div id="container">
    <form method="post" action="">
	
		<label for="cotacao">Valor da cotação do dólar</label>
		<input type="number" name="cotacao" required>

		<br>

		<label for="valor">Valor monetário a ser convertido</label>
		<input type="number" name="valor" required>
		
		<br>

		<label for="tipo">Tipo de conversão</label>
		<select class="select" name="tipo">
			<option value="real-dolar">Real para Dólar</option>
			<option value="dolar-real">Dólar para Real</option>
		</select>
		
		<br>

		<input class="button" type="submit" value="Converter">
	</form>
	
	<?php
	if(isset($_POST['cotacao']) && isset($_POST['valor']) && isset($_POST['tipo'])) {
		$cotacao = $_POST['cotacao'];
		$valor = $_POST['valor'];
		$tipo = $_POST['tipo'];

		if($tipo == 'real-dolar') {
			$resultado = $valor / $cotacao;
			echo "<p>R$ $valor equivalem a US$ $resultado</p>";
		} elseif($tipo == 'dolar-real') {
			$resultado = $valor * $cotacao;
			echo "<p>US$ $valor equivalem a R$ $resultado</p>";
		}
	}
	?>
    </form>
    </div>

    <div id="container">
    <form method="post" action="">
		<label for="km_atual">KM atual</label>
		<input type="number" name="km_atual" required>

		<br>

		<label for="km_final">KM final</label>
		<input type="number" name="km_final" required>
		
		<br>

		<label for="litro">Litros consumidos:</label>
		<input type="number" name="litro" required>
		
		<br>
		
		<input class="button" type="submit" value="Calcular">
	
    <?php
        if(isset($_POST['km_atual']) && isset($_POST['km_final']) && isset($_POST['litro'])) {
            $km_atual = $_POST['km_atual'];
            $km_final = $_POST['km_final'];
            $litro    = $_POST['litro'];
    
            if($km_final > $km_atual && $litro > 0) {
                $consumo_medio = ($km_final - $km_atual)/$litro;
                echo "<br>O consumo médio do carro é ". number_format($consumo_medio, 2, '.'). "km/l" ;
            
            } else {
                echo "<p>valores não correspondem.";
            }
        }
    ?>
    </form>
    </div>

    <div id="container">
    <form method="post" action="">
        <label for="nome">Nome</label>
		<input type="text" name="nome" required>
		<br>

        <label for="year">Ano de nascimento</label>
		<input type="number" name="year" required>
		<br>

		<label for="weight">Peso</label>
		<input type="number" name="weight" required>

		<br>

		<label for="height">Altura</label>
		<input type="number" name="height" required>
		
		<br>
		
		<input class="button" type="submit" value="Calcular">
    <?php
        if(isset($_POST['nome']) && isset($_POST['year'])
         && isset($_POST['weight'])&& isset($_POST['height'])) {
            $name = $_POST['nome'];
            $year = $_POST['year'];
            $born = (date("Y") - $year);
            $weight = $_POST['weight'];
            $height = $_POST['height'];
            $heightTwo = $height/100;
            $imc = ($weight/$heightTwo ** 2);
    
            if($imc <= 0){
                echo "<br>Digite um valor válido";
            } else if($imc < 16){
                echo "<br>baixo peso muito grave";
            } else if($imc == 16 || $imc <= 16.99){
                echo "<br>baixo peso grave";
            } else if($imc == 17 || $imc <= 18.49){
                echo "<br>baixo peso";
            } else if($imc == 18.50 || $imc <= 24.99){
                echo "<br>peso normal";
            } else if($imc == 25 || $imc <= 29.99){
                echo "<br>sobrepeso";
            } else if($imc == 30 || $imc <= 34.99){
                echo "<br>obesidade I";
            } else if($imc == 35 || $imc <= 39.99){
                echo "obesidade II";
            } else if($imc >= 40){
                echo "<br>obesidade III";
            } 
            
            echo "<br>oi $name e sua idade é: $born, <br>seu peso de $weight kg e sua altura de ". number_format($height, 0). "m,". " resultam no imc: " . number_format($imc, 2);
            
        }
    ?>
    </form>
    </div>

    <div id="container">
    <form method="post" action="">
        <label for="nome">Nome</label>
		<input type="text" name="nome" required>
		<br>

        <label for="born">Ano de nascimento</label>
		<input type="number" name="born" required>
		<br>
		
		<input class="button" type="submit" value="Calcular">
	</form>
    <?php
        if(isset($_POST['nome']) && isset($_POST['born'])) {
            $name = $_POST['nome'];
            $born = $_POST['born'];
            $age = (date("Y") - $born);
            $voto = $age;
        
            if($voto <= 0){
                echo "<br>Digite um valor válido";
            } else if($voto <= 17 || $voto >= 70){
                echo "<br>seu voto é facultativo";
            } else if($voto >= 18 || $voto <= 70){
                echo "<br>seu voto é obrigatorio";
            } 
            
            echo "<br>oi $name e sua idade é: $age";      
        }
    ?>
    </div>

    <div id="container">
<form method="post" action="">
        <label for="numb">Número Fatorial</label>
		<input type="number" name="numb" required>
		<br>

		<input class="button" type="submit" value="Calcular">
	</form>
    <?php
        if(isset($_POST['numb'])) {
            $numb = $_POST['numb'];
            $fatorial = 1;
            
            for($count = 1; $count<= $numb; $count++){
                $fatorial *= $count;
            }
            echo "<br>número $numb ! = $fatorial";
        }
    ?>
    </div>
</body>
</html>