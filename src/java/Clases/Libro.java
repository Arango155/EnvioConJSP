
package Clases;

public class Libro {
    private int codigo;
    private String nombre_libro;
    private String tipo_de_pasta;
    private String editorial;
    private String anio_publicacion;
 
   

    
    public Libro (int codigo, String nombre_libro, String tipo_de_pasta, String editorial, String anio_publicacion){
        this.codigo=codigo;
        this.nombre_libro=nombre_libro;
        this.tipo_de_pasta=tipo_de_pasta;
        this.editorial=editorial;
        this.anio_publicacion=anio_publicacion;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }

    public String getNombre_libro() {
        return nombre_libro;
    }

    public void setNombre_libro(String nombre_libro) {
        this.nombre_libro = nombre_libro;
    }

    public String getTipo_de_pasta() {
        return tipo_de_pasta;
    }

    public void setTipo_de_pasta(String tipo_de_pasta) {
        this.tipo_de_pasta = tipo_de_pasta;
    }

    public String getEditorial() {
        return editorial;
    }

    public void setEditorial(String editorial) {
        this.editorial = editorial;
    }

    public String getAnio_publicacion() {
        return anio_publicacion;
    }

    public void setAnio_publicacion(String anio_publicacion) {
        this.anio_publicacion = anio_publicacion;
    }

    
    
    
}
