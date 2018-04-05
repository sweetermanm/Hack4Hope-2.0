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

	public Post(String intitle, String incontent) {
		title = intitle;
		content = incontent;
	}

	public Post(int inuseful, String inuser, boolean inrep) {
		useful = inuseful;
		username = inuser;
		reported = inrep;


	//assigns useful
	}
	public void setuse(int inuse) {
		useful = inuse;

	}

	//assigns boolean reported flag
	public void setrep(boolean inrep) {
		reported = inrep;

	}

	//assigns username to post
	public void setuser(String inuse) {
		username = inuse;


	}

	//returns useful
	public int getuse() {
		return useful;

	}

	//returns boolean reported flag
	public boolean getrep() {
		return reported;

	}

	//returns username of post
	public String getuser() {
		return username;

	}

	//returns text in comment
	public String getcon() {
		return content;

	}

	//returns username
	public String Populate() {


		return username;
		

	}










}
