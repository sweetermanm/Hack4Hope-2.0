package easy;

public class Comment {
	private String username; 
    private int postID; 
    //Content 
    private int useful; 
    private boolean report;
	private String title; 
	private String content; 
	
	public Comment() {
		
	}
	
	public Comment(String intitle, String incontent) {
		title = intitle; 
		content = incontent; 
		
	}
	public Comment(int inuseful, String inuser, boolean inrep,  int inpid) {
		useful = inuseful;
		username = inuser; 
		report = inrep; 
		postID = inpid; 
		
		
		
	}
	public void setpid(int inpost) {
		postID = inpost; 
		
	}
	
	public void setuse(int inuse) {
		useful = inuse; 
		
	}
	
	public void setrep(boolean inrep) {
		report = inrep; 
		
	}
	public void setuser(String inuse) {
		username = inuse; 
		
		
	}
	public int getuse() {
		return useful; 
		
	}
	
	public boolean getrep() {
		return report; 
		
	}
	public String getuser() {
		return username; 
		
	}
	
	public int getpid() {
		return postID; 
		
	}

	public String getcon()
	{
		
		return content; 
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
