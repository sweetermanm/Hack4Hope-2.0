package easy;

import java.util.ArrayList;
import java.util.List;
import java.sql.*;
public class Queries {
private static Connection conn;
static List<User> ulist = new ArrayList<User>();
static List<Post> plist = new ArrayList<Post>();
static List<Comment> clist = new ArrayList<Comment>();
public static void main(String args[]) {
//printUsers();
//printPosts();
//printComments(1);
//findUserByUsername("te");
//getNumUsefulPost(1);
//getNumUsefulComment(1);
getPasswordByUserID(1);
}

//connection to DB
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

 //terminates connection to DB if none is found
public static void closeConnection() {
try{
if(conn != null)
conn.close();
}
catch(SQLException ex){
}
}

//creates new user
//adds new user to an ArrayList of users
//returns ArrayList
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

//creates new post
//adds new post to a post ArrayList
//returns ArrayList
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

//creates new comment
//adds new comment to an ArrayList
//returns ArrayList
public static List<Comment> printComments(int id)
{
connectToDB();
try {
Statement stmt = conn.createStatement();
ResultSet rs = stmt.executeQuery("SELECT u.username, c.cContent FROM `eogotwa_h4hProject`.`Comment` c "
+ "INNER JOIN `eogotwa_h4hProject`.`User` u ON u.ID = c.cUserID WHERE cPostID =" + id);

while(rs.next()){

Comment c = new Comment(rs.getString("u.username"),rs.getString("cContent"));
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

//finds user
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

//finds a user's password
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

//searches posts given a user criteria
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

//searches comments given a user criteria
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
}
