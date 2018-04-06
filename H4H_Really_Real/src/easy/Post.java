package easy;

//Created by Nick stone 
//3/4/18
import java.sql.Timestamp;
public class Post 
{
	private int useful; 
	private String username; 
	private boolean reported; 
	private Timestamp date; 
	private String title;
	private String content;
	private int pID;
	
	public Post(String intitle, String incontent) {
		title = intitle; 
		content = incontent;
	}
	
	public Post(int id, String intitle, String incontent) {
		title = intitle; 
		content = incontent;
		pID = id;
	}
	
	public Post(int inuseful, String inuser, boolean inrep) {
		useful = inuseful;
		username = inuser; 
		reported = inrep; 
		
		
		
	}
	public void setuse(int inuse) {
		useful = inuse; 
		
	}
	
	public void setrep(boolean inrep) {
		reported = inrep; 
		
	}
	public void setuser(String inuse) {
		username = inuse; 
		
		
	}
	public int getuse() {
		return useful; 
		
	}
	
	public boolean getrep() {
		return reported; 
		
	}
	public String getuser() {
		return username; 
		
	}
	public String getcon() {
		return content; 
		
	}
	
	
	public String Populate() {
		
		
		return username; 
		
		
	}
	
	public int getID() {
		return pID;
	}
	
	
	
	
	
	
	
	
	
	
}
