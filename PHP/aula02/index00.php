<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Sofia+Sans:wght@600&display=swap" rel="stylesheet">
    <title>Document</title>
</head>
<style>
    *{
        margin:0;
        padding:0;
        box-sizing: border-box;
        font-family: 'Sofia Sans', sans-serif;
    }

    body{
        display:flex;
        align-items:center;
        justify-content: center;
        min-height:100vh;
        /* background:url("https://th.bing.com/th/id/OIP.KUGWv7jX1naF5j6NmHKoUgHaEK?w=308&h=180&c=7&r=0&o=5&pid=1.7"); */
    }

    #container{
        /* background: url("https://th.bing.com/th/id/OIP.2npOT9HLVedahqILVTYnQAHaHa?w=166&h=180&c=7&r=0&o=5&pid=1.7"); */
        max-width: 500px;
        width: 100%;
        border-radius: 16px;
        margin: 0 15px;
        padding: 30px;
    }

    header{
        display: flex;
        align-items: center;
        justify-content: center;
        position: relative;
        font-size: 20px;
        font-weight: 600;
    }

    form{
        display: flex;
        align-items:center;
        justify-content: center;
        padding: 30px;
    }

    .inputFields{
        display:flex;
        justify-content: center;
        align-items: center;
        flex-direction: column;
    }

    input{
        outline:none;
        border-radius:10px;
        margin:20px 0;
        width: 120%;
        text-align: center;
        height:32px;
        border: 1px solid #aaa;
        font-size: 14px;
        font-weight: 600;
        color: #333;
    }


</style>
<body>
    <div id="container">
        <header>Forms</header>
        <form action="#" id="form">
            <div class="formFirst">
                <div class="fields">
                    <div class="inputFields">
                        <label for="name">Usuário</label>
                        <input type="text" oninput="nameValidate()" placeholder="Nome com 3 caracteres" required>
                    </div>
                </div>
            </div>
        </form>
    </div>
</body>
<script>
    const form = document.getElementById('form');
    const input = document.querySelectorAll('[required]');
    
    function setError(index){
        input[index].style.border = "1px solid red";
    }

    function setOk(index){
        input[index].style.border = "1px solid blue";
    }
    
    function nameValidate(){
        if(input[0].value.length < 3){
            setError(0);
        } else {
            setOk(0);
        }
    }
</script>
</html>