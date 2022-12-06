<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <link rel="stylesheet" href="css2/style.css"/>
        <link rel="shortcut icon" href="imagens/astro.jpg" type="image/x-icon">
        <title>Tela de Login</title>
        
    </head>
    <body>
        <div class="main-login">
            <div class="left-login">
                <h1>Cadastre-se <br>E torne-se um de nós.</h1>
                <img src="imagens/astro.jpg" class="left-login-img" alt="" style="width: 350px; height: 350px; border-radius: 50%;">
            </div>

            <form action="admin/config/trataLogin.jsp" method="POST">
                <div class="right-login">
                    <div class="card-login">
                        <h1>LOGIN</h1>
                        <div class="textfield">
                            <label for="email">Email</label>
                            <input type="email" name="email" placeholder="Email">
                        </div>
                        <div class="textfield">
                            <label for="senha">Senha</label>
                            <input type="password" name="senha" placeholder="Senha">
                        </div>

                        <div class="senha">
                            <a href="admin/index.jsp" class="forget-pass">Fazer cadastro!</a>
                        </div>

                        <input type="submit" name="submit" class="btn btn-primary" value="Login">                           
                    </div>
                </div>
            </form>

        </div>
    </body>
</html>