package easy;

import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.Out;

public class onejavaToRuleThemAll {
	static List<User> ulist = new ArrayList<User>();
	static List<Post> plist = new ArrayList<Post>();
	static List<Comment> clist = new ArrayList<Comment>();
	static boolean track = false;

	//adds new user to ArrayList
	public static List<User> addu(String inemail, String inusername,String infname, String inlname, String inpassword,  String indob ) {
		User u = new User(inemail,inusername,infname,inlname,inpassword,indob,false,false);
		ulist.add(u);

		return ulist;
	}

	//adds new post to ArrayList
	public static String addp(String intitle, String incontent) {
		Post p = new Post(intitle, incontent);
		plist.add(p);
		return"";
	}

	//adds new comment to ArrayList
	public static  String addc(String ititle, String icontent) {
		Comment c = new Comment(ititle, icontent);
		clist.add(c);
		return"";
	}

	//returns username of post
	public static String displayu(String k) {
		for(int i = 0; i < ulist.size();i++) {
			System.out.println(ulist.get(i));
		}
		return"";
	}

	//reutrns post
	public static  String displayp(String k) {
		for(int i = 0; i < plist.size();i++) {
			System.out.println(plist.get(i));
		}
		return"";
	}

	//returns comment
	public static String displayc(String k) {
		for(int i = 0; i < clist.size();i++) {
			System.out.println(clist.get(i));
		}
		return"";
	}

	//??
	public static boolean track(boolean lol) {
		track = lol;
		return track;

		}

	public static boolean gettrack() {
		return track;


	}
	}
