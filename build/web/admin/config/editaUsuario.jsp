<%@ page import= "java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>

<%
    String id = request.getParameter("id");
    String nome = request.getParameter("nome");
    String email = request.getParameter("email");
    String telefone = request.getParameter("telefone");
    String senha = request.getParameter("senha");
    
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    
    String url = "jdbc:postgresql://localhost:5432/siteweb";
    String usuario = "postgres";
    String senhaBD = "admin";
    
    try{
        Class.forName("org.postgresql.Driver");
        con = DriverManager.getConnection(url,usuario,senhaBD);
        st = con.createStatement();
        st.executeUpdate("update usuarios set nome='"+nome+"', senha='"+senha+"', email='"+email+"', telefone='"+telefone+"' WHERE id='"+id+"' ");
        response.sendRedirect("../usuario.jsp?status=2");//Registro atualizado com sucesso!
    }catch(Exception e){
        out.print(e);
    }

%>

