<%-- 
    
    Author     : Arango
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
          <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="script.js" type="text/javascript"></script>
        <link href="style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>        
            <br>
           <div class="container">
            <c:if test="${success==0}">
                    <div class="alert alert-danger" id="error">${mensaje}</div>
                   
                </c:if>
               <div class="abs-center">
                
                <form class="form-register" action="NewServlet" method="POST">
                <h1>Bienvenido</h1>
                <br>
                
            <div class="form-group">
              <label for="exampleInputEmail1" >Ingrese usuario</label>
              <input type="text" class="controls1" name="user"  aria-describedby="emailHelp">
            </div>
            <div class="form-group">
              <label for="exampleInputPassword1">Ingrese su contraseña</label>
              <input type="password" class="controls1" name="pass"  >
            </div>
            
                 <button type="submit" value="Login" class="botons">Iniciar Sesion</button>
                 
                 <a href="index2.jsp">Registrate aqui</a>
          </form>
                   
               </div> </div>
            
        
                   
                    
                
                        
  
               
    </body>
</html>
