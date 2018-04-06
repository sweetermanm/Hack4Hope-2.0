package easy;

import java.util.ArrayList;
import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.Out;

public class onejavaToRuleThemAll {
	static List<User> ulist = new ArrayList<User>();
	static List<Post> plist = new ArrayList<Post>();
	static List<Comment> clist = new ArrayList<Comment>();

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
	public static String addpost(int inpID, String intitle, String incontent) {
		Post p = new Post(inpID, intitle, incontent);
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
}
