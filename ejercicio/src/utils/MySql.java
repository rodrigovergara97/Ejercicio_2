package utils;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySql {
	public static Connection  getConexion()
	{
		Connection con =null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url="jdbc:mysql://localhost:3307/Ejercicio";
			String usr="root";
			String pssw="Circuitec";
			con=DriverManager.getConnection(url,usr,pssw);
			
			
		} catch ( ClassNotFoundException e) {
			System.out.println("error driver no istalado");
		}
	catch (SQLException e) {
		System.out.println("error base de datos");
	}
		return con;
		
	}

}
