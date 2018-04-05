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

	//decalres comment title
	public Comment(String intitle, String incontent) {
		title = intitle;
		content = incontent;

	}

	//assigns user and other important info
	public Comment(int inuseful, String inuser, boolean inrep,  int inpid) {
		useful = inuseful;
		username = inuser;
		report = inrep;
		postID = inpid;



	}

	//assigns a post id
	public void setpid(int inpost) {
		postID = inpost;

	}

	//??
	public void setuse(int inuse) {
		useful = inuse;

	}

	//??
	public void setrep(boolean inrep) {
		report = inrep;

	}

	//assigns username
	public void setuser(String inuse) {
		username = inuse;


	}

	//??
	public int getuse() {
		return useful;

	}

	//returns report status
	public boolean getrep() {
		return report;

	}

	//returns username
	public String getuser() {
		return username;

	}
	//returns postID
	public int getpid() {
		return postID;

	}

	public String getcon()
	{

		return content;


	}















}
