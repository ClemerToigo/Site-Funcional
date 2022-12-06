<%@ page import= "java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>
<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="../css3/style.css"/>
        <link rel="shortcut icon" href="img/astro.jpg" type="image/x-icon">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <title>Editar Usuário</title>
    </head>
    <body style="background-color: #6b747c;">
        <%
            String nomeUsuario = (String) session.getAttribute("NomeUsuario");
            if (nomeUsuario == null) {
                response.sendRedirect("../../index.jsp?erro=3");
            }
        %>
        <div id="login">
            <h3 class="text-center text-white pt-5" style="padding-bottom: 10px">Editar Usuário</h3>
            <%
                String id = request.getParameter("id");
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
                    rs = st.executeQuery("SELECT *FROM usuarios WHERE id = '" + id + "' ");
                    while (rs.next()) {%>
            <form action="config/editaUsuario.jsp?id=<%=rs.getString("id")%>" method="POST">
                <div class="container" >
                    <div id="login-row" class="row justify-content-center align-items-center" >
                        <div id="login-column" class="col-md-6" >
                            <div id="login-box" class="col-md-12" style="height: auto; margin-top: 0; border-radius: 10px; background-color:#27242e ;">
                                <h3 class="text-center text-info" style="padding-top: 10px">Editar</h3>
                                <div class="form-group">
                                    <label for="username" class="text-info" >Nome</label><br>
                                    <input type="text" name="nome"  class="form-control" value="<%=rs.getString("nome")%>">
                                </div>
                                <div class="form-group">
                                    <label for="username" class="text-info">Email</label><br>
                                    <input type="email" name="email"  class="form-control" value="<%=rs.getString("email")%>">
                                </div>
                                <div class="form-group">
                                    <label for="username" class="text-info">Telefone</label><br>
                                    <input type="text" name="telefone"  class="form-control" value="<%=rs.getString("telefone")%>">
                                </div>
                                <div class="form-group">
                                    <label for="password" class="text-info">Senha</label><br>
                                    <input type="password" name="senha"  class="form-control" value="<%=rs.getString("senha")%>">
                                </div>
                                <div class="form-group">                                 
                                    <input type="submit" name="submit" class="btn btn-info btn-md" value="cadastrar" style="margin-bottom: 10px">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
            <%    }
                } catch (Exception e) {
                    out.print(e);
                }
            %>


        </div>
    </body>
</html>
