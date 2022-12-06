<%@ page import= "java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>
<html>
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="img/astro.jpg" type="image/x-icon">
        <link rel="stylesheet" href="css4/style.css"/>

        <title>Página do ADM</title>
    </head>
    <body>
          <%
            String nomeUsuario = (String) session.getAttribute("NomeUsuario");
            if (nomeUsuario == null) {
                response.sendRedirect("../../index.jsp?erro=3");
            }
        %>
        <nav class="menu">
            
            <a href="adidas.jsp" class="um">Adidas</a>
            <a href="nike.jsp" class="dois">Nike</a>
            <a href="usuario.jsp" class="tres">Usuarios</a>
        </nav>
    </body>
</html>
