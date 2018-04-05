package easy;
//this class creates a way for the user to post comments. You will be able to see who posted the information.
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
	
	public Comment(String intitle, String incontent) {//creates string to add a title and the content
		title = intitle; 
		content = incontent; 
		
	}
	public Comment(int inuseful, String inuser, boolean inrep,  int inpid) {//this is where we declare our variables
		useful = inuseful;
		username = inuser; 
		report = inrep; 
		postID = inpid; 
		
		
		//Below is activating and getting the information and then returning the content
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
		
		return content; //gives all of our content
		
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
