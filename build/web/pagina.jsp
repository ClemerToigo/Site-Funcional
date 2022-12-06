<%@ page import= "java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>

<!DOCTYPE html>
<html lang="pt-br">

    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/style.css">
        <link rel="shortcut icon" href="admin/img/astro.jpg" type="image/x-icon">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Trirong">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
        <title>Manual do tênis</title>
    </head>

    <body>
        <header>
            <div class="navbar">
                <div class="container-logo" >
                    <div class="nav-logo">
                        <img src="imagens/astro.jpg" alt="alt" style="width: 70px; padding-top: 10px;"/>
                    </div>
                    <div class="nav-texto" style="padding-left: 90px; ;">
                        <a href="pagina.jsp" >Início</a>
                        <div class="dropdown">
                            <button class="btn btn-secondary dropdown-toggle" style="background-color: #9267df;" type="button" data-bs-toggle="dropdown" aria-expanded="false">
                                Mais Informações
                            </button>
                            <ul class="dropdown-menu dropdown-menu-dark">
                                <li><a class="dropdown-item active" style="background-color: #9267df;" href="#servicos">Serviços</a></li>
                                <li><a class="dropdown-item" href="#produtos">Produtos</a></li>
                                <li><a class="dropdown-item" href="admin/home.jsp">ADM</a></li>
                            </ul>
                        </div>


                    </div>
                </div>
            </div>

            <div class="foto-fundo">
                <div class="textos">
                    <div class="texto1">Bem vindo a nossa Page!</div>
                    <div class="texto2">Aqui você encontra Produtos de outro Planeta!</div>
                </div>
            </div>
        </header>

        <main>
            <div class="container-fluid" id="servicos">
                <section class="text-center" >
                    <h1 style="color: #9267df;">Informações</h1>
                    <h3>Destacamos abaixo algumas informações!</h3>
                </section>
            </div>

            <div class="container-fluid" >
                <div class="card" style="background-color: #27242e;  color: white;">
                    <div class="cards">
                        <svg class="svg-inline--fa fa-circle fa-stack-2x " style="color: #9267df;" aria-hidden="true" focusable="false" id="bola1"
                             data-prefix="fas" data-icon="circle" role="img" xmlns="http://www.w3.org/2000/svg"
                             viewBox="0 0 512 512" data-fa-i2svg="">
                        <path fill="currentColor"
                              d="M512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256z">
                        </path>
                        </svg>

                        <svg class="svg-inline--fa fa-cart-shopping fa-stack-1x fa-inverse" aria-hidden="true"
                             focusable="false" id="icone1" data-icon="cart-shopping" role="img"
                             xmlns="http://www.w3.org/2000/svg" viewBox="0 0 576 512" data-fa-i2svg="">
                        <path fill="currentColor"
                              d="M96 0C107.5 0 117.4 8.19 119.6 19.51L121.1 32H541.8C562.1 32 578.3 52.25 572.6 72.66L518.6 264.7C514.7 278.5 502.1 288 487.8 288H170.7L179.9 336H488C501.3 336 512 346.7 512 360C512 373.3 501.3 384 488 384H159.1C148.5 384 138.6 375.8 136.4 364.5L76.14 48H24C10.75 48 0 37.25 0 24C0 10.75 10.75 0 24 0H96zM128 464C128 437.5 149.5 416 176 416C202.5 416 224 437.5 224 464C224 490.5 202.5 512 176 512C149.5 512 128 490.5 128 464zM512 464C512 490.5 490.5 512 464 512C437.5 512 416 490.5 416 464C416 437.5 437.5 416 464 416C490.5 416 512 437.5 512 464z">
                        </path>
                        </svg>

                        <H4>E-Commerce</H4>
                        <p>Possuímos uma identidade há mais de oito anos, enquanto atuamos como uma fornecedora de duas das principais marcas do mercado, Nike e Adidas.
                        Venha conhecer o nosso trabalho e adquira os seus produtos.</p>
                    </div>
                    <div class="cards">
                        <svg class="svg-inline--fa fa-circle fa-stack-2x " style="color: #9267df;" aria-hidden="true" focusable="false" id="bola1"
                             data-prefix="fas" data-icon="circle" role="img" xmlns="http://www.w3.org/2000/svg"
                             viewBox="0 0 512 512" data-fa-i2svg="">
                        <path fill="currentColor"
                              d="M512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256z">
                        </path>
                        </svg>

                        <svg class="svg-inline--fa fa-laptop fa-stack-1x fa-inverse" aria-hidden="true" focusable="false"
                             data-prefix="fas" id="icone2" data-icon="laptop" role="img" xmlns="http://www.w3.org/2000/svg"
                             viewBox="0 0 640 512" data-fa-i2svg="">
                        <path fill="currentColor"
                              d="M128 96h384v256h64v-272c0-26.38-21.62-48-48-48h-416c-26.38 0-48 21.62-48 48V352h64V96zM624 383.1h-608c-8.75 0-16 7.25-16 16v16c0 35.25 28.75 64 64 64h512c35.25 0 64-28.75 64-64v-16C640 391.2 632.8 383.1 624 383.1z">
                        </path>
                        </svg>

                        <H4>Qualidade e Design </H4>
                        <p>Oferecemos um site aberto e de ótima qualidade, de fácil uso para que os nossos usuários sintam-se bem e com intusiasmo.</p>
                    </div>
                    <div class="cards">
                        <svg class="svg-inline--fa fa-circle fa-stack-2x"  style="color: #9267df;" aria-hidden="true" focusable="false" id="bola1"
                             data-prefix="fas" data-icon="circle" role="img" xmlns="http://www.w3.org/2000/svg"
                             viewBox="0 0 512 512" data-fa-i2svg="">
                        <path fill="currentColor"
                              d="M512 256C512 397.4 397.4 512 256 512C114.6 512 0 397.4 0 256C0 114.6 114.6 0 256 0C397.4 0 512 114.6 512 256z">
                        </path>
                        </svg>

                        <svg class="svg-inline--fa fa-lock fa-stack-1x fa-inverse" aria-hidden="true" focusable="false"
                             data-prefix="fas"  id="icone3" data-icon="lock" role="img" xmlns="http://www.w3.org/2000/svg"
                             viewBox="0 0 448 512" data-fa-i2svg="">
                        <path fill="currentColor"
                              d="M80 192V144C80 64.47 144.5 0 224 0C303.5 0 368 64.47 368 144V192H384C419.3 192 448 220.7 448 256V448C448 483.3 419.3 512 384 512H64C28.65 512 0 483.3 0 448V256C0 220.7 28.65 192 64 192H80zM144 192H304V144C304 99.82 268.2 64 224 64C179.8 64 144 99.82 144 144V192z">
                        </path>
                        </svg>

                        <H4>Segurança Web</H4>
                        <p>Nosso site está protegido com as melhores ferramentas para que os nossos usuários não se prejudiquem em 
                        possíveis ataques de pessoas más intencionadas.</p>
                    </div>
                </div>
            </div>

            <div class="cor-portifolio"  id="produtos" >
                <div class="portifolio">
                    <h1 style="color: #9267df;">Produtos</h1>
                    <p>Conheça os produtos das nossas parceiras e divirta-se!</p>
                </div>

                <div class="nome">
                    <h3>Adidas</h3>
                </div> 
                 <%
                    Connection con = null;
                    Statement st = null;
                    ResultSet rs = null;

                    String url = "jdbc:postgresql://localhost:5432/siteweb";
                    String usuario = "postgres";
                    String senhaBD = "admin";

                    try {
                        Class.forName("org.postgresql.Driver");
                        con = DriverManager.getConnection(url, usuario, senhaBD);
                        st = con.createStatement();
                        rs = st.executeQuery("SELECT *FROM adidas ORDER BY id desc");
                        while (rs.next()) {
                            String id = rs.getString("id");
                %>
                 <div class="col" style="margin-left: 100px;">
                    <div class="card2" style="width: 300px;">
                        <img style="width: 100%; height: 200px; object-fit: cover;"  src="arquivos/<%=rs.getString("imagem")%>" class="card-img-top" alt="...">
                        <div class="card-body" style="background-color: #38274d; margin-bottom: 50px; padding-top: 10px;">
                            <h5 class="card-title" style="color: white; margin-bottom: 10px; padding: 10px; text-transform: uppercase;"><%=rs.getString("nome")%></h5>
                            <p class="card-text" style="color: white; padding: 10px;"><%=rs.getString("descricao")%></p>
                            <p style="color: white;">R$<%=rs.getString("valor")%></p>
                            <button class="btn btn-primary" style="margin-bottom: 10px;">Comprar</button>
                        </div>
                    </div>
                </div>
                <%};
                    } catch (Exception e) {
                        out.print(e);
                    }

                %>   
               </div>

               <div class="cor-portifolio">
                <div class="nome" >
                    <h3>Nike</h3>
                </div> 
               <%
                    try {
                        Class.forName("org.postgresql.Driver");
                        con = DriverManager.getConnection(url, usuario, senhaBD);
                        st = con.createStatement();
                        rs = st.executeQuery("SELECT *FROM nike ORDER BY id desc");
                        while (rs.next()) {
                            String id = rs.getString("id");
                %>
                <div class="col" style="margin-left: 100px;">
                    <div class="card2" style="width: 300px;">
                        <img style="width: 100%; height: 200px; object-fit: cover;"  src="arquivos/<%=rs.getString("imagem")%>" class="card-img-top" alt="...">
                        <div class="card-body" style="background-color: #38274d; margin-bottom: 50px; padding-top: 10px;">
                            <h5 class="card-title" style="color: white; margin-bottom: 10px; padding: 10px; text-transform: uppercase;"><%=rs.getString("nome")%></h5>
                            <p class="card-text" style="color: white; padding: 10px;"><%=rs.getString("descricao")%></p>
                            <p style="color: white;">R$<%=rs.getString("valor")%></p>
                            <button class="btn btn-primary" style="margin-bottom: 10px;">Comprar</button>
                        </div>
                    </div>
                </div>
                <%};
                    } catch (Exception e) {
                        out.print(e);
                    }

                %>                      
            </div>

        </main>
    </body>

</html>