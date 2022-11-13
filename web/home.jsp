



<%@page import="Clases.ConexionBaseDeDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html>
          <head>
              
               <title>App Web</title>
               
               
        <link href='https://unpkg.com/boxicons@2.0.7/css/boxicons.min.css' rel='stylesheet'>
       
               
               
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="https://maxst.icons8.com/vue-static/landings/line-awesome/line-awesome/1.3.0/css/line-awesome.min.css">
   
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css" integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N" crossorigin="anonymous">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
        <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script src="script.js" type="text/javascript"></script>
        <link href="style.css" rel="stylesheet" type="text/css"/>
       
              
          </head>
          
             <% 
        response.setHeader("Cache-Control", "nocache, no-store, must-revalidate");
        if(session.getAttribute("user")==null){
            response.sendRedirect("/index.jsp");
        }
    %>
    <body>
        
        

          
          <body>
              
             
              <header>
         

   

<div class="user-wrapper">
    <img src="https://cdn.icon-icons.com/icons2/1378/PNG/512/avatardefault_92824.png" width="60px" height="60px" alt="">
<div><h4>${UsuarioLogueado}</h4>
<small>Admin</small></div>
</div>            
                  
                  <div>
                      <a href="Logout" class="btn btn-danger">Cerrar sesion</a>
                  </div>
                  
    </header>
              
              
              
                   
                      <%
                              ConexionBaseDeDatos conn = new ConexionBaseDeDatos();
                              Statement smt;
                              ResultSet rs;
                              smt = conn.conectar().createStatement();
                              rs = smt.executeQuery("SELECT * FROM biblioteca.libro");
                    %>
              
                    
                    <div class="sidebar">
            <div class="logo-details">
              <i class='bx bxl-c-plus-plus icon'></i>
                
                <i class='bx bx-menu' id="btn" ></i>
            </div>
            
                
              <li>
               
                    <a href="home.jsp">
                        
                  <i class='bx bx-grid-alt'></i>
                  <span class="links_name">Alumno</span>
                </a>
                 <span class="tooltip">Alumno</span>
              </li>
              <li>
               
                  <a href="home2.jsp">
                 <i class='bx bx-user' ></i>
                 
                 <span class="links_name">Curso</span>
               </a>
               <span class="tooltip">Curso</span>
             </li>
             <li>
               <a href="#">
                 <i class='bx bx-chat' ></i>
                 <span class="links_name">Messages</span>
               </a>
               <span class="tooltip">Messages</span>
             </li>
             <li>
                 <a href="Vistas/Collaborator.jsp">
                 <i class='bx bx-pie-chart-alt-2' ></i>
                 <span class="links_name">Collaborator</span>
               </a>
               <span class="tooltip">Collaborator</span>
             </li>
             <li>
                 <a href="Vistas/Projects.jsp">
                 <i  class='bx bx-folder' ></i>
                 <span class="links_name">Project Manager</span>
               </a>
               
               <span class="tooltip">Projects</span>
             </li>
             
              <li>
               <a href="#">
                 <i class='bx bx-cart-alt' ></i>
                 <span class="links_name">Order</span>
               </a>
               <span class="tooltip">Order</span>
             </li>
             <li>
               <a href="#">
                 <i class='bx bx-heart' ></i>
                 <span class="links_name">Saved</span>
               </a>
               <span class="tooltip">Saved</span>
             </li>
             <li>
               <a href="#">
                 <i class='bx bx-cog' ></i>
                 <span class="links_name">Setting</span>
               </a>
               <span class="tooltip">Setting</span>
             </li>
             
             <li class="profile">
                 <div class="profile-details">
                   <!--<img src="profile.jpg" alt="profileImg">-->
                   
                 </div>
                 <a href="Logout">Logout - ${UsuarioLogueado}<!------------ CERRAR SESION ------------>
                    <i  class='bx bx-log-out' id="log_out" ></i>
                   
                </a>
                 
             </li>

                  </div>    

              
          
               
          
            

             
             
            
                    
                    <br><!-- comment -->
                    <br>
                    <br>
                    <br>
                    <div  >
   <form class="form-register"   method="POST"  id="form" name="form"  >
              
        <h1>Registro de Libros</h1>
        <br>
        
            <div class="form-group">
                <label for="exampleInputName">Codigo</label>
                <input class="form-control" type="text"  name="codigo"  >
            </div>
            <div class="form-group">
                <label for="exampleInputName">Nombre </label>
                <input class="form-control" type="text"  name="nombre_libro"  >
            </div>
        
        <div class="form-group">
                <label for="exampleInputName">Pasta</label>
                <input class="form-control" type="text"  name="tipo_de_pasta"  >
            </div>
        
         <div class="form-group">
                <label for="exampleInputName">Editorial</label>
                <input class="form-control" type="text"  name="editorial"  >
            </div>
        
            <div class="form-group">
                <label for="exampleInputName">Año de publicacion</label>
                <input class="form-control" type="text"  name="anio_publicacion"  >
            </div>
           
        
            
            <br>
            
        
            
           
            
          <form class="d-flex" role="search">
             
              <button type="submit" onclick="enviarFormularioOpcionLibro()" class="btn btn-info">Enviar formulario</button>
                                       </form> 
                                        
                

            
        </form>   
        </div>
                    
                     
                    
                    
                     <div class="container mx-auto">
                              <div class="container my-5">
                                        <center><h1 class="">Tabla libro</h1></center>
                              </div>
                              <div class="d-flex justify-content-between mx-5 my-4">
                                        <form class="d-flex" role="search">
                                       <input  class="btn btn-success" type="submit" value="Mostrar todos los cursos">
                                        </form>
                                       
                                       <form class="d-flex" role="search">
                                                  <input class="form-control me-2" type="text" name="txtSearch">
                                                  <input class="btn btn-warning" type="submit" value="Buscar">

                                        </form>
                                  
                                  
                                  
                                                            
                                  
                                          <%
                                                  String nameSearch = request.getParameter("txtSearch");
                                                  if (nameSearch != null) {
                                                            smt = conn.conectar().createStatement();
                                                            rs = smt.executeQuery("SELECT * FROM biblioteca.libro WHERE nombre_libro LIKE" + " '%" + nameSearch + "%' ");
                                                  } else {
                                                            System.err.print("Error");
                                                  }
                                        %>
                              </div>
                              
                             
                                        
                              <c:if test="${error ==1}">
                                        <div class="alert alert-danger" id="error">${message}</div>
                              </c:if>
                              <div class="table-responsive mx-4 my-4">
                                        <table class="table table-hover table-dark">
                                            <thead>
                                                  <tr>
                                                             <th scope="col">Codigo</th>
                                                            <th scope="col">Nombre</th>
                                                            <th scope="col">Pasta</th>
                                                            <th scope="col">Editorial</th>
                                                            <th scope="col">Publicacion</th>
                                                            
                                                            <th scope="col">Acciones</th>
                                                            
                                                  </tr>
                                                  <%
                                                            while (rs.next()) {
                                                  %>
                                                  <tr>
                                                            <td><%= rs.getString("codigo")%></td>
                                                            <td><%= rs.getString("nombre_libro")%></td>
                                                            <td><%= rs.getString("tipo_de_pasta")%></td>
                                                            <td><%= rs.getString("editorial")%></td>
                                                            <td><%= rs.getString("anio_publicacion")%></td>
                                                            
                                                           
                                                            <td>
                                                                      <a href="edit.jsp?id=<%= rs.getInt("codigo")%>" class="btn btn-outline-light">Editar</a>
                                                                      <a href="delete.jsp?id=<%= rs.getInt("codigo")%>" class="btn btn-danger">Eliminar</a>
                                                                      
                                                                   
                                                                      
                                                                      
                                                            </td>
                                            <a href="delete.jsp"></a>
                                                  </tr>
                                                  <%}%>
                                            </thead>
                                                  <tbody id="bodyTable">

                    </tbody>  
                                        </table>
                              </div>
                    </div>
                                  
                                                 
          </body>
          
</html>