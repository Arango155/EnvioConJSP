package Login;



import Clases.ConexionBaseDeDatos;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class User {
    private ConexionBaseDeDatos conectorBD;
    private Connection conexion;
    private PreparedStatement statement = null;
    private ResultSet result = null;
    
    public User(){
        this.conectorBD=new ConexionBaseDeDatos();
    }
    
    public String validarUsuario(String user, String pass){
        String sql = "SELECT * FROM usuario WHERE nombre_usuario = '" + user + "' AND contrasenia = '"+pass+"'";
        try{
            this.conexion = this.conectorBD.conectar();
            this.statement = conexion.prepareStatement(sql);
            this.result=this.statement.executeQuery();
            if(result != null){
                 String usuarioEncontrado="";
                while (result.next()){
                    usuarioEncontrado= result.getString("nombre_usuario");
                }
                return usuarioEncontrado;
            }
            return "Usuario no encontrado";
        }
        catch(SQLException e){
           return e.getMessage();
        }
    }
}
