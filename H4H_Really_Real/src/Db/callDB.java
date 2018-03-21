package Db;

import java.sql.*;

public class callDB {
private static Connection conn;
 
public static void connectToDB() {
conn = null;
try {
    //DB parameters
    String url       = "jdbc:mysql://66.116.150.183:3306/eogotwa_h4hProject";
    String user      = "eogotwa_EmmaK";
    String password  = "Password01";
   
    //create a connection to the database
    conn = DriverManager.getConnection(url, user, password);
} 
catch(SQLException e) {
  System.out.println(e.getMessage());
}
}
 
public static void insertUsers(String username, String fName, String lName, String DOB, String password, String email) {
connectToDB();
try {
String sql = "INSERT INTO  `eogotwa_h4hProject`.`User` (`Username`, `fName`, "
+ "`lName`, `DOB`, `password`, `email`)"
        + " VALUES ('"+username+"', '"+fName+"', '"+lName+"', '"
        +DOB+"', '"+password+"', '"+email+"');";
PreparedStatement preparedInsert = conn.prepareStatement(sql);
System.out.println(preparedInsert);
 
preparedInsert.execute(sql);
}
catch(SQLException e) {
  System.out.println(e.getMessage());
} 
try{
if(conn != null)
conn.close();
}
catch(SQLException ex){
System.out.println(ex.getMessage());
}

}
}