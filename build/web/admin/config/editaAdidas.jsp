<%@ page import= "java.sql.*" %>
<%@ page import="org.postgresql.Driver" %>
<%@ page import="util.Upload" %>
<%@ page import="java.io.File" %>

<%
    Connection con = null;
    Statement st = null;
    ResultSet rs = null;
    
    String id = request.getParameter("id");
    String img = request.getParameter("imagem");
    
    
    Upload up = new Upload();
    
    up.setFolderUpload("arquivos");
    
    if(up.formProcess(getServletContext(),request)){
        
        String imagem = up.getFiles().get(0);
        String nome = up.getForm().get("nome").toString();
        String desc = up.getForm().get("descricao").toString();
        Float valor = Float.parseFloat(up.getForm().get("valor").toString());
        
        String url = "jdbc:postgresql://localhost:5432/siteweb";
        String usuario = "postgres";
        String senhaBD = "admin";
        
        try{
            Class.forName("org.postgresql.Driver");
            con = DriverManager.getConnection(url,usuario,senhaBD);
            st = con.createStatement();
            st.executeUpdate("UPDATE adidas set nome='"+nome+"',descricao='"+desc+"',valor='"+valor+"',imagem='"+imagem+"'  WHERE id='"+id+"' ");
            
            File file = new File("C:\\Users\\cleme\\OneDrive\\Documentos\\NetBeansProjects\\ProjetoSite\\web\\arquivos\\"+img); //colocar \\ para dar certo o diretório pego dos arquivos de onde está as fotos
            file.delete();
            
            response.sendRedirect("../adidas.jsp?status=2");//Adicionado com sucesso
        }catch(Exception e){
            out.print(e);
        }
        
    }
    

%>