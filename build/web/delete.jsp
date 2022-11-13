<%-- 
    Document   : delete
    Created on : Nov 10, 2022, 6:50:19 PM
    Author     : jdara
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
          <%
            //conectando a base de datos
            Connection conexion=null;
            String url="jdbc:mysql://localhost:3306/biblioteca";//url de MySQL
            String usuario="root";// usuario de mysql local
            String clave="root"; 
           
            
             Class.forName("com.mysql.jdbc.Driver");
             conexion=DriverManager.getConnection( url, usuario,clave);
             
             //listado de la tabla pero de la fila seleccionada
             
             PreparedStatement ps;
             
             
             int id=Integer.parseInt(request.getParameter("id")); 
             
             ps=conexion.prepareStatement("delete  from libro where codigo="+id);
             ps.executeUpdate();
             response.sendRedirect("home.jsp");
             
             
             
            
          
            %>
      
     
    </body>
</html>