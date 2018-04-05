package easy;
//this is the main frame that controls the display throughout the website

import java.util.ArrayList;//imports ArrayList from the library
import java.util.List;//imports List from the library

import org.apache.jasper.tagplugins.jstl.core.Out;

public class onejavaToRuleThemAll {//creates a list that is used throughout the class
	static List<User> ulist = new ArrayList<User>();//creates a place that will hold users
	static List<Post> plist = new ArrayList<Post>();//creates a list that will hold all of the posts
	static List<Comment> clist = new ArrayList<Comment>();//creates a list that will hold all of the comments
	static boolean track = false; 
	
	public static List<User> addu(String inemail, String inusername,String infname, String inlname, String inpassword,  String indob ) {
		User u = new User(inemail,inusername,infname,inlname,inpassword,indob,false,false);
		ulist.add(u);
		
		return ulist;
	}
	public static String addp(String intitle, String incontent) {
		Post p = new Post(intitle, incontent);
		plist.add(p);
		return"";
	}
	public static  String addc(String ititle, String icontent) {
		Comment c = new Comment(ititle, icontent);
		clist.add(c);
		return"";
	}
	public static String displayu(String k) {
		for(int i = 0; i < ulist.size();i++) {
			System.out.println(ulist.get(i));
		}
		return"";
	}
	public static  String displayp(String k) {
		for(int i = 0; i < plist.size();i++) {
			System.out.println(plist.get(i));
		}
		return"";
	}
	public static String displayc(String k) {
		for(int i = 0; i < clist.size();i++) {
			System.out.println(clist.get(i));
		}
		return"";
	}
	public static boolean track(boolean lol) {
		track = lol;
		return track;
		
		}
	
	public static boolean gettrack() {
		return track; 
		
		
	}
	}

