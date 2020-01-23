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
	private int pid;
	public Post(String intitle, String incontent) {
		title = intitle; 
		content = incontent;
	}
	public Post(int id, String intitle, String incontent) {
		title = intitle; 
		content = incontent;
		pid = id; 
		
	}
	public Post(int id, String intitle, String incontent, int inuseful) {
		title = intitle; 
		content = incontent;
		pid = id; 
		useful = inuseful;
		
	}
	public Post(int id, String intitle, String incontent, int inuseful,String inusername) {
		title = intitle; 
		content = incontent;
		pid = id; 
		useful = inuseful;
		username = inusername;
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
	
//	public void getuse(int inid) {
//		
//		
//		useful = inid; 
//	}
	
	
	
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
	
	public int getID() {
		return pid;
	}
	
	
	public String Populate() {
		
		
		return username; 
		
		
	}
	
	
	
	
	
	
	
	
	
	
}
