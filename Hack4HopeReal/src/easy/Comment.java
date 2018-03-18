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
	private void setpid(int inpost) {
		postID = inpost; 
		
	}
	
	private void setuse(int inuse) {
		useful = inuse; 
		
	}
	
	private void setrep(boolean inrep) {
		report = inrep; 
		
	}
	private void setuser(String inuse) {
		username = inuse; 
		
		
	}
	private int getuse() {
		return useful; 
		
	}
	
	private boolean getrep() {
		return report; 
		
	}
	private String getuser() {
		return username; 
		
	}
	
	private int getpid() {
		return postID; 
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
