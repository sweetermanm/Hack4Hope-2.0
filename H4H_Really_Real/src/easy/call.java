package easy;
import java.sql.*;


public class call {

	private static Connection conn;
	 
	public static void main(String[] args) {
	
	}
	 
	public static void connectToDB() {
	conn = null;
	try {
	    //DB parameters
	    String url       = "jdbc:mysql://66.116.150.183:3306/eogotwa_h4hProject";
	    String user      = "eogotwa_EmmaK";
	    String password  = "Password01";
	   
	    //create a connection to the database
	    conn = DriverManager.getConnection(url, user, password);
	    //System.out.println("worked");
	} 
	catch(SQLException e) {
	System.out.println(e);
	}
	}
	 
	public static void closeConnection() {
	try{
	if(conn != null)
	conn.close();
	}
	catch(SQLException ex){
	}
	}
	 
	public static String printUsers() {
	String users = "";
	connectToDB();
	//System.out.println("We are connected");
	try {
	Statement stmt = conn.createStatement();
	    ResultSet rs = stmt.executeQuery("SELECT * FROM `eogotwa_h4hProject`.`User`");
	    users = "Usernames already in use: "; 
	    //System.out.println(rs);
	    while(rs.next()){
	    users = users + (rs.getString("username") + ", " );
	    //System.out.println(users);
	    }
	}
	catch(SQLException e) {
	System.out.println(e);
	} 
	closeConnection();
	return users;
	}
	 
	public static void insertUsers(String username, String fName, String lName, String DOB, String password, String email) {
	connectToDB();
	try {
	String sql = "INSERT INTO  `eogotwa_h4hProject`.`User` (`Username`, `fName`, "
	+ "`lName`, `DOB`, `password`, `email`)"
	        + " VALUES ('"+username+"', '"+fName+"', '"+lName+"', '"
	        +DOB+"', '"+password+"', '"+email+"');";
	PreparedStatement preparedInsert = conn.prepareStatement(sql);
	 
	preparedInsert.execute(sql);
	}
	catch(SQLException e) {
	System.out.println(e);
	} 
	closeConnection();
	}
	 
	public static void insertPosts(String un, String title, String content) {
	connectToDB();
	try {
	System.out.println(un);
	String name = "'"+un+"'";
	String userID = "";
	Statement stmt = conn.createStatement();
	    ResultSet rs = stmt.executeQuery("SELECT `ID` FROM `eogotwa_h4hProject`.`User` WHERE `username` = " + name);
	    while(rs.next()){
	    userID = (rs.getString("ID"));
	    //System.out.println(userID);
	    }
	String sql = "INSERT INTO  `eogotwa_h4hProject`.`Post` (`pUserID`, `title`, `pContent`)"
	        + " VALUES ('"+userID+"', '"+title+"', '"+content+"');";
	PreparedStatement preparedInsert = conn.prepareStatement(sql);
	 
	preparedInsert.execute(sql);
	}
	catch(SQLException e) {
	System.out.println(e);
	} 
	closeConnection();
	}
	 
	public static void insertComments(String un, int pID, String content) {
	connectToDB();
	try {
	String name = "'"+un+"'";
	String userID = "";
	Statement stmt = conn.createStatement();
	    ResultSet rs = stmt.executeQuery("SELECT `ID` FROM `eogotwa_h4hProject`.`User` WHERE `username` = " + name);
	    while(rs.next()){
	    userID = (rs.getString("ID"));
	    }
	   
	String sql = "INSERT INTO  `eogotwa_h4hProject`.`Comment` (`cUserID`, `cPostID`, `cContent`)"
	        + " VALUES ('"+userID+"', '"+pID+"', '"+content+"');";
	PreparedStatement preparedInsert = conn.prepareStatement(sql);
	 
	preparedInsert.execute(sql);
	}
	catch(SQLException e) {
	System.out.println(e);
	} 
	closeConnection();
	}
	}


