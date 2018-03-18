package easy;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
public class Queries {
	
	private static Connection conn; 
	static List<User> ulist = new ArrayList<User>();
	static List<Post> plist = new ArrayList<Post>();
	
	public static void main(String args[]) {
		printUsers();
		printPosts();
		
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
		
	public static List<User> printUsers() 
	{
		
		connectToDB();
		try {
		Statement stmt = conn.createStatement();
		    ResultSet rs = stmt.executeQuery("SELECT * FROM `eogotwa_h4hProject`.`User`");
		   
		    while(rs.next()){
		   
		    User u = new User(rs.getString("username"),rs.getString("fName"),rs.getString("lName"),rs.getString("password"),rs.getString("email"),rs.getBoolean("type"),rs.getBoolean("admin"));
		    ulist.add(u);
		    
		    }
		 
		    
		}
		catch(SQLException e) {
		System.out.println(e);
		} 
		closeConnection();
		
		
		return ulist;
		}


public static List<Post> printPosts() 
{
	connectToDB();
	try {
	Statement stmt = conn.createStatement();
	    ResultSet rs = stmt.executeQuery("SELECT * FROM `eogotwa_h4hProject`.`Post`");
	   
	    while(rs.next()){
	   
	    Post p = new Post(rs.getString("title"),rs.getString("pContent"));
	    plist.add(p);
	    
	    }
	
	}
	catch(SQLException e) {
	System.out.println(e);
	} 
	closeConnection();
	
	
	return plist;
	}
}
