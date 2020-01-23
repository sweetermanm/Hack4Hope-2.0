 package easy;

import java.sql.*;



public class call {


private static Connection conn;

 

public static void main(String[] args) {

//deleteUser("te");

//deletePost(14);

//deleteComment(3);

//incrementUsefulPost(1);

//incrementUsefulComment(1);

//authenticate("krummenachere", "myPass");

//System.out.println("worked");
	//insertPosts("krummenachere", "please work already", "I am really hoping this works because idk what else to do");
}

 

public static void connectToDB() {

conn = null;

try {

//DB parameters

String url       = "jdbc:mysql://127.0.0.1:3306/eogotwa_h4hProject";

String user      = "root";

String password  = "xavier";

   

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

 

public static void insertUsers(String username, String fName, String lName, String DOB, String password, String email, String bio, String color) {

connectToDB();

try {

String sql = "INSERT INTO  `eogotwa_h4hProject`.`User` (`Username`, `fName`, "

+ "`lName`, `DOB`, `password`, `email`, `bio`, `color`)"

+ " VALUES ('"+username+"', '"+fName+"', '"+lName+"', '"

+DOB+"', '"+password+"', '"+email+"', '"+bio+"', '"+color+"');";

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
		
		
		int newpoints = Queries.getNumPoints(name) + 50;
		System.out.println(newpoints);
		String sql2 = "UPDATE `eogotwa_h4hProject`.`User` SET `points` = '"+ newpoints + "' WHERE `User`.`username` = " + name + ";";
	
		PreparedStatement preparedInsert2 = conn.prepareStatement(sql2);
	
		preparedInsert2.execute(sql2);

	
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

public static void deleteUser(String un) {

connectToDB();

int id = Queries.findUserByUsername(un);

//System.out.println(id);

try {

String sql = "DELETE FROM  `eogotwa_h4hProject`.`User` WHERE `User`.`ID` = " + id + ";";

PreparedStatement preparedInsert = conn.prepareStatement(sql);

 

preparedInsert.execute(sql);

}

catch(SQLException e) {

System.out.println(e);

} 

closeConnection();

}

public static void deletePost(int pID) {

connectToDB();

try {

String sql = "DELETE FROM  `eogotwa_h4hProject`.`Post` WHERE `Post`.`postID` = " + pID + ";";

PreparedStatement preparedInsert = conn.prepareStatement(sql);

 

preparedInsert.execute(sql);

}

catch(SQLException e) {

System.out.println(e);

} 

closeConnection();

}

public static void deleteComment(int cID) {

connectToDB();

try {

String sql = "DELETE FROM  `eogotwa_h4hProject`.`Comment` WHERE `Comment`.`commentID` = " + cID + ";";

PreparedStatement preparedInsert = conn.prepareStatement(sql);

 

preparedInsert.execute(sql);

}

catch(SQLException e) {

System.out.println(e);

} 

closeConnection();

}

public static void incrementUsefulPost(int pID) {

int numUseful = Queries.getNumUsefulPost(pID);

int newUseful = numUseful + 1;

connectToDB();

try {

String sql = "UPDATE `eogotwa_h4hProject`.`Post` SET `useful` = '"+ newUseful + "' WHERE `Post`.`postID` = " + pID + ";";

PreparedStatement preparedInsert = conn.prepareStatement(sql);

 

preparedInsert.execute(sql);

}

catch(SQLException e) {

System.out.println(e);

} 

closeConnection();

}

public static void incrementUsefulComment(int cID) {

int numUseful = Queries.getNumUsefulComment(cID);

int newUseful = numUseful + 1;

connectToDB();

try {

String sql = "UPDATE `eogotwa_h4hProject`.`Comment` SET `useful` = '"+ newUseful + "' WHERE `Comment`.`commentID` = " + cID + ";";

PreparedStatement preparedInsert = conn.prepareStatement(sql);

 

preparedInsert.execute(sql);

}

catch(SQLException e) {

System.out.println(e);

} 

closeConnection();

}

public static void decrementUsefulPost(int pID) {

int numUseful = Queries.getNumUsefulPost(pID);

int newUseful = numUseful - 1;

connectToDB();

try {

String sql = "UPDATE `eogotwa_h4hProject`.`Post` SET `useful` = '"+ newUseful + "' WHERE `Post`.`postID` = " + pID + ";";

PreparedStatement preparedInsert = conn.prepareStatement(sql);

 

preparedInsert.execute(sql);

}

catch(SQLException e) {

System.out.println(e);

} 

closeConnection();

}

public static void decrementUsefulComment(int cID) {

int numUseful = Queries.getNumUsefulComment(cID);

int newUseful = numUseful - 1;

connectToDB();

try {

String sql = "UPDATE `eogotwa_h4hProject`.`Comment` SET `useful` = '"+ newUseful + "' WHERE `Comment`.`commentID` = " + cID + ";";

PreparedStatement preparedInsert = conn.prepareStatement(sql);

 

preparedInsert.execute(sql);

}

catch(SQLException e) {

System.out.println(e);

} 

closeConnection();

}

public static int authenticate(String un, String uPass) {

int result = 0;

int uID = Queries.findUserByUsername(un);

if (uID == 0){

//System.out.println("INVALID USERNAME");

result = 0;

}

else {

String pass = Queries.getPasswordByUserID(uID);

//System.out.println(pass + " " + uPass);

if (pass.equals(uPass)) {

//System.out.println("VALID --> login successful");

result = 1;

}

else {

//System.out.println("INVALID PASSWORD");

result = 2;

}

}

//System.out.println(result);

return result;

}

}