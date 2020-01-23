package Db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class testing {
public static void main(String[] args) {
Connection conn = null;
try {
    // db parameters
	String url       = "jdbc:mysql://127.0.0.1:3306/eogotwa_h4hProject";

	String user      = "root";

	String password  = "xavier";
 
    // create a connection to the database
    conn = DriverManager.getConnection(url, user, password);
    Statement stmt = conn.createStatement();
    ResultSet rs = stmt.executeQuery("SELECT * from User");
    while(rs.next()){
    System.out.println("Found a person named: " + rs.getString("username"));
    }
    // more processing here
    // ... 
} 
catch(SQLException e) {
  System.out.println(e.getMessage());
} 
finally {
try{
          if(conn != null)
            conn.close();
}
catch(SQLException ex){
          System.out.println(ex.getMessage());
}
}
}

}
