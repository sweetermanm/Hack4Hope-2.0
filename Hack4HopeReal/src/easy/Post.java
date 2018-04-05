package easy;

//Created by Nick stone 
//3/4/18
//comments by Roslyn Davis
import java.sql.Timestamp;//This adds a timestamp and recognizes this class as a SQL to get the most current timestamp in the post
public class Post //this class creates the content so you are able to post
{//these fields are not for the user to see, however, the user is able to see all of the content posted
	private int useful; 
	private String username; 
	private boolean reported; 
	private Timestamp date; 
	private String title;
	private String content;
	private int pid;
	public Post(String intitle, String incontent) {
		title = intitle; 
		content = incontent;
	}
	public Post(String intitle, String incontent,int inpid) {
		title = intitle; 
		content = incontent;
		pid = inpid; 
		
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
	
	
	
	
	
	
	
	
	
	
}
