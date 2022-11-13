
package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author JP
 */
public class LibroController {
      Libro[] tablaLibro;
    int indiceArray;
    private ConexionBaseDeDatos conectorBD;
    private Connection conexion;
    private PreparedStatement statement = null;
    private ResultSet result = null;
    
    public LibroController(){
        this.tablaLibro = new Libro[100];
        this.indiceArray=0;
    }
    
     public void guardarLibro(Libro libro){
        this.tablaLibro[this.indiceArray]=libro;  
        this.indiceArray=this.indiceArray+1;
        // procedimiento para almacenar en la Base de Datos
    }
    
    public Libro[] getLibro(){
        return this.tablaLibro;
    }
    
    public void abrirConexion(){
        conectorBD= new ConexionBaseDeDatos();
        conexion=conectorBD.conectar();
    }
    
    public boolean getLibro2(Libro libro){        
        String sql = "INSERT INTO biblioteca.libro(codigo, nombre_libro, tipo_de_pasta, editorial, anio_publicacion) ";
             sql += " VALUES(?,?,?,?,?)"; 
        try{
            abrirConexion();
            statement = conexion.prepareStatement(sql); 
            statement.setInt(1, libro.getCodigo());
            statement.setString(2, libro.getNombre_libro());
            statement.setString(3, libro.getTipo_de_pasta());
            statement.setString(4, libro.getEditorial());
            statement.setString(5, libro.getAnio_publicacion());
           
             int resultado = statement.executeUpdate(); 
                if(resultado > 0){
                    return true;
                }else{
                    return false;
                }
        }catch(SQLException e){
            String error = e.getMessage();  
            return false;
        }    
    }
    
     
    
    
    
}

