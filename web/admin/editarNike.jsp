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
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <title>Editar Nike</title>
    </head>
    <body style="background-color: #6b747c;">
        <%
            String nomeUsuario = (String) session.getAttribute("NomeUsuario");
            if (nomeUsuario == null) {
                response.sendRedirect("../../index.jsp?erro=3");
            }
        %>
        <div id="login">
            <h3 class="text-center text-white pt-5" style="padding-bottom: 10px">Editar Marca Nike</h3>
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
                    rs = st.executeQuery("SELECT *FROM nike WHERE id  = '" + id + "' ");
                    while (rs.next()) {%>
            <div class="container">
                <div id="login-row" class="row justify-content-center align-items-center" >
                    <div id="login-column" class="col-md-6" >
                        <div id="login-box" class="col-md-12" style="height: auto; margin-top: 0; border-radius: 10px; background-color:#27242e ;">
                            <h3 class="text-center text-info" style="padding-top: 10px">Editar</h3>
                            <form action="config/editaNike.jsp?id=<%=rs.getString("id")%>" method="POST" enctype="multipart/form-data">
                                <div class="form-group">
                                    <label for="nome" class="text-info">Nome</label><br>
                                    <input type="text" name="nome"   class="form-control" placeholder="Nome" value="<%=rs.getString("nome")%>">
                                </div>
                                <div class="form-group">
                                    <label for="descricao" class="text-info">Descrição</label><br>
                                    <input type="text" name="descricao"  class="form-control" placeholder="Descrição" value="<%=rs.getString("descricao")%>">
                                </div>
                                <div class="form-group">
                                    <label for="valor" class="text-info">Valor</label><br>
                                    <input type="text" name="valor"  class="form-control" placeholder="Valor" value="<%=rs.getString("valor")%>">
                                </div>
                                <div class="form-group">
                                    <label for="img" class="text-info">Imagem</label><br>
                                    <input type="file" name="file[]"  class="form-control" placeholder="imagem" value="<%=rs.getString("imagem")%>">
                                </div>
                                <div class="form-group">                                 
                                    <input type="submit" name="submit" class="btn btn-info btn-md" value="Concluído" style="margin-bottom: 10px">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
            <%    }
                } catch (Exception e) {
                    out.print(e);
                }
            %>

        </div>
    </div> 
</body>
</html>