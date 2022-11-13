<%-- 
    
    Author     : Arango
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>



<html>
    <head>
        <title>Register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <link href="style.css" rel="stylesheet" type="text/css"/>
        <script src="script.js" type="text/javascript"></script>
        
    </head>
    <body>  
        
     
    
    <div class="d-flex justify-content-around">
        <div class="p-3 bd-highlight">
        <h1>Formulario</h1>
        <br>
        <form method="POST" id="form" name="form" >
            <div class="form-group">
                <label for="exampleInputName">Usuario</label>
                <input class="form-control" type="text"  name="nombre_usuario" id="usuario" >
            </div>
            <div class="form-group">
                <label for="exampleInputName">Contraseña</label>
                <input class="form-control" type="text"  name="contrasenia" id="contrasenia" >
            </div>
           
            
            <br>
            <a href="index.jsp" type="button" onclick="enviarFormularioOpcionLog()" class="btn btn-warning">Guardar con JS</a>
             
             <a href="index.jsp" class="btn btn-danger">Volver</a>
            
            
             
        </form>   
        </div>
     
        </div>
    </body>
   
</html>


