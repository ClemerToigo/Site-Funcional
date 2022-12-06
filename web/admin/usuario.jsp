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
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
        <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

        <title>Editar Usuário</title>
    </head>
    <body style="background-color: #6b747c;">
        <%
            String nomeUsuario = (String) session.getAttribute("NomeUsuario");
            if (nomeUsuario == null) {
                response.sendRedirect("../../index.jsp?erro=3");
            }
        %>
        <div class="container" style="margin-top: 10%;">
            <h2>Usuários cadastrados</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th scope="col">ID</th>
                        <th scope="col">Nome</th>
                        <th scope="col">Email</th>
                        <th scope="col">Telefone</th>
                        <th scope="col">Senha</th>
                        <th scope="col">Ações</th>
                    </tr>
                </thead>
                <tbody>
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
                            rs = st.executeQuery("SELECT *FROM usuarios ORDER BY id asc");
                            while (rs.next()) {
                                String id = rs.getString("id");
                    %>
                    <tr>
                        <th scope="row"><%=rs.getString("id")%></th>
                        <td><%=rs.getString("nome")%></td>
                        <td><%=rs.getString("email")%></td>
                        <td><%=rs.getString("telefone")%></td>
                        <td><%=rs.getString("senha")%></td>
                        <td>

                            <a href="editarUsuarios.jsp?id=<%=rs.getString("id")%>" class="text-info" ><i class='fas fa-history' style='font-size:20px'></i></a>
                            <button type="button" class="btn btn-outline-danger" data-toggle="modal" data-target="#exampleModal<% out.print(id); %>">
                                <i class='fas fa-exclamation-circle' style='font-size:20px;color:red'></i>
                            </button>
                        </td>
                    </tr>   

                <div class="modal fade" id="exampleModal<%if (id == id)
                        out.print(id);%>" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                    <div class="modal-dialog">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title">Excluir Usuário</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <p>Deseja excluir <%=rs.getString("nome")%>?</p>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
                                <a href="usuario.jsp?funcao=excluir&id=<%=rs.getString(1)%>" class="btn btn-danger">Excluir</a>
                            </div>
                        </div>
                    </div>
                </div>
                <%
                        }

                    } catch (Exception e) {
                        out.print(e);
                    }
                %>
                </tbody>
            </table>
            <%
                if (request.getParameter("funcao") != null && request.getParameter("funcao").equals("excluir")) {
                    String id = request.getParameter("id");
                    try {
                        Class.forName("org.postgresql.Driver");
                        con = DriverManager.getConnection(url, usuario, senhaBD);
                        st = con.createStatement();
                        st.executeUpdate("DELETE from usuarios WHERE id = '" + id + "' ");
                        response.sendRedirect("usuario.jsp?status=3");//Registro deletado com sucesso
                    } catch (Exception e) {
                        out.println(e);
                    }
                }
            %>      
        </div>
    </body>
</html>