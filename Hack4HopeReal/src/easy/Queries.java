package easy;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
public class Queries {
private static Connection conn; 
static List<User> ulist = new ArrayList<User>();
static List<Post> plist = new ArrayList<Post>();
static int count = 0; 
static List<Comment> clist = new ArrayList<Comment>();
public static void main(String args[]) {
//printUsers();
//printPosts();
//printComments(1);
//findUserByUsername("te");
//getNumUsefulPost(1);
//getNumUsefulComment(1);
//getPasswordByUserID(1);
//getNumPosts();
//findUserbyID(1);
}
public static void connectToDB() {
conn = null;
try {
    //DB parameters
    String url       = "jdbc:mysql://66.116.150.183:3306/eogotwa_h4hProject";
    String user      = "eogotwa_EmmaK";
    String password  = "Password02";
   
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
    ulist.clear();
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
plist.clear();
try {
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT a.*, b.username FROM `eogotwa_h4hProject`.`Post` a "
		+ "INNER JOIN `eogotwa_h4hProject`.`User` b ON a.pUserID = b.ID");
   
while(rs.next()){
//System.out.println(rs.getString("b.username"));
Post p = new Post(rs.getInt("a.postID"), rs.getString("a.title"),rs.getString("a.pContent"),rs.getInt("a.useful"),rs.getString("b.username"));
plist.add(p);
}
}
catch(SQLException e) {
System.out.println(e);
} 
closeConnection();
return plist;
}

public static List<Post> printPostsOnUseful() 
{
connectToDB();
plist.clear();
try {
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT a.*, b.username FROM `eogotwa_h4hProject`.`Post` a "
		+ "INNER JOIN `eogotwa_h4hProject`.`User` b ON a.pUserID = b.ID ORDER BY a.useful DESC");
   
while(rs.next()){
//System.out.println(rs.getString("b.username"));
Post p = new Post(rs.getInt("a.postID"), rs.getString("a.title"),rs.getString("a.pContent"),rs.getInt("a.useful"),rs.getString("b.username"));
plist.add(p);
}
}
catch(SQLException e) {
System.out.println(e);
} 
closeConnection();
return plist;
}

public static List<Comment> printComments(int id) 
{
connectToDB();
clist.clear();
try {
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT u.username, c.cContent,c.commentID,c.useful FROM `eogotwa_h4hProject`.`Comment` c "
+ "INNER JOIN `eogotwa_h4hProject`.`User` u ON u.ID = c.cUserID WHERE cPostID =" + id);
   
while(rs.next()){
   
Comment c = new Comment(rs.getString("u.username"),rs.getString("cContent"),rs.getInt("commentID"), rs.getInt("useful"));
System.out.println(rs.getString("u.username"));
System.out.println(rs.getString("c.cContent"));
clist.add(c);
    
}
}
catch(SQLException e) {
System.out.println(e);
} 
closeConnection();
//System.out.println(clist);
return clist;
}
public static int findUserByUsername(String un) {
int id = 0;
connectToDB();
try {
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT ID FROM `eogotwa_h4hProject`.`User` WHERE username = '" + un + "'");
while(rs.next()){
id = rs.getInt("ID");
}
}
catch(SQLException e) {
System.out.println(e);
} 
closeConnection();
//System.out.println(id);
return id;
}

public static String findUserbyID(int id) {
String username = "";
connectToDB();
try {
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT username FROM `eogotwa_h4hProject`.`User` WHERE ID = " + id);
while(rs.next()){
username = rs.getString("username");
}
}
catch(SQLException e) {
System.out.println(e);
} 
closeConnection();
//System.out.println(username);
return username;
}

public static String getPasswordByUserID(int uID) {
String pass = "";
connectToDB();
try {
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT Password FROM `eogotwa_h4hProject`.`User` WHERE ID = " + uID);
while(rs.next()){
pass = rs.getString("Password");
}
}
catch(SQLException e) {
System.out.println(e);
} 
closeConnection();
//System.out.println(pass);
return pass;
}
public static int getNumUsefulPost(int id) {
int numUseful = 0;
connectToDB();
try {
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT useful FROM `eogotwa_h4hProject`.`Post` WHERE postID = " + id);
while(rs.next()){
numUseful = rs.getInt("useful");
}
}
catch(SQLException e) {
System.out.println(e);
} 
closeConnection();
//System.out.println(numUseful);
return numUseful; 
}
public static int getNumUsefulComment(int id) {
int numUseful = 0;
connectToDB();
try {
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT useful FROM `eogotwa_h4hProject`.`Comment` WHERE commentID = " + id);
while(rs.next()){
numUseful = rs.getInt("useful");
}
}
catch(SQLException e) {
System.out.println(e);
} 
closeConnection();
//System.out.println(numUseful);
return numUseful; 
}

public static int getNumPosts() {
	int numPosts = 0;
	connectToDB();
	try {
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM `eogotwa_h4hProject`.`Post`");
	while(rs.next()){
	numPosts = rs.getInt("total");
	}
	}
	catch(SQLException e) {
	System.out.println(e);
	} 
	closeConnection();
	
	System.out.println(numPosts);
	return numPosts;
}

public static int getNumCommentPerPost() {
	int numPosts = 0;
	connectToDB();
	try {
	Statement stmt = conn.createStatement();
	ResultSet rs = stmt.executeQuery("SELECT COUNT(*) AS total FROM `eogotwa_h4hProject`.`Post`");
	while(rs.next()){
	numPosts = rs.getInt("total");
	}
	}
	catch(SQLException e) {
	System.out.println(e);
	} 
	closeConnection();
	
	//System.out.println(numPosts);
	return numPosts;
}
}