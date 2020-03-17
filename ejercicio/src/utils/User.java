package utils;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import action.registrar;
public class User {
public static Connection con;
public static Connection connectionz() throws Exception{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3307/Ejercicio","root","Circuitec");
	return con;
}
public static int register (registrar ra)
{
	int flag=0;
	try {
		PreparedStatement pst= connectionz().prepareStatement("INSERT INTO persona_1 (nombre,apellido,correo,contraseña) values(?,?,?,?)");
          
		  pst.setString(1, ra.getName());
          pst.setString(2, ra.getLt_name());
          pst.setString(3, ra.getEmail());
          pst.setString(4, ra.getPassword());
        
		flag=pst.executeUpdate();
		
	} catch (Exception ex) {
		// TODO: handle exception
          ex.printStackTrace();;
	}
	return flag;
}

}
