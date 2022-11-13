
package Clases;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author JP
 */
public class LogController {
      Log[] tablaLog;
    int indiceArray;
    private ConexionBaseDeDatos conectorBD;
    private Connection conexion;
    private PreparedStatement statement = null;
    private ResultSet result = null;
    
    public LogController(){
        this.tablaLog = new Log[100];
        this.indiceArray=0;
    }
    
     public void guardarLog(Log log){
        this.tablaLog[this.indiceArray]=log;  
        this.indiceArray=this.indiceArray+1;
        // procedimiento para almacenar en la Base de Datos
    }
    
    public Log[] getLog(){
        return this.tablaLog;
    }
    
    public void abrirConexion(){
        conectorBD= new ConexionBaseDeDatos();
        conexion=conectorBD.conectar();
    }
    
    public boolean getLog2(Log log){        
        String sql = "INSERT INTO biblioteca.usuario(nombre_usuario, contrasenia) ";
             sql += " VALUES(?,?)"; 
        try{
            abrirConexion();
            statement = conexion.prepareStatement(sql); 
            statement.setString(1, log.getNombre_Usuario());
            statement.setString(2, log.getContrasenia());
           
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

