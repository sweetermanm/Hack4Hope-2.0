package easy;
//  Created by Nick Stone 
//  Created on 3/1/18

public class User 
{
	private String username;
	private String fname; 
	private String lname; 
	private String password; 
	private String email;
	private String dob; 
	private boolean type; 
	private boolean admin; 
	
	
	public User() {
		
		
	}
	
	//More Constructor Cases could be added in the future
	
	public User(String inemail, String inusername,String infname, String inlname, String inpassword,  String indob, boolean intype, boolean inadmin)
	{
		
		
		username = inusername; 
		fname = infname; 
		lname = inlname; 
		password = inpassword; 
		dob = indob; 
		type = intype; 
		admin = inadmin;
		email = inemail; 
		
	}
	public User( String inusername,String infname, String inlname, String inpassword,String inemail,   boolean intype, boolean inadmin)
	{
		
		
		username = inusername; 
		fname = infname; 
		lname = inlname; 
		password = inpassword; 
		dob = ""; 
		type = intype; 
		admin = inadmin;
		email = inemail; 
		
	}
	//Getter and Setter Methods
	public void setuser(String inuser) {
		username = inuser; 
	}
	public void setemail(String inemail) {
		email = inemail; 
		
	}
	public void setfname(String infname) {
		fname = infname; 
	}
	public void setlname(String inlname) {
		lname = inlname; 
	}
	public void setpass(String inpass) {
		password = inpass; 
	}
	public void setdob(String indob) {
		dob = indob; 
	}
	public void settype(boolean intype) {
		type = intype; 
	}
	public void setadmin(boolean inadmin) {
		admin = inadmin; 
	}

	public String getuser() {
		return username; 
	}
	public String getfname() {
		return fname; 
	}
	public String getlname() {
		return lname; 
	}
	public String getdob() {
		return dob; 
	}
	public boolean gettype() {
		return type; 
	}
	public boolean getadmin() {
		return admin; 
	}
	public String getemail() {
		return email; 
	}
	
	
	
	
}
