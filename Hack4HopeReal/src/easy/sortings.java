package easy;
import java.util.*;


// I CANT STRESS ENOUGH THIS IS TO PARSE EVERY STRING IN CHAT FOR NO VULGAR LANGUAGE
//Created by Nick Stone

public class sortings {

	static List<String> list = new ArrayList<String>();
	public static int g = 0; 
	
	
	public static void main(String[] args) {
	
		
//		String str = "Hello I'm your String";
//		String[] splited = str.split("\\s+");
//	
//		for(int i = 0; i < splited.length;i++) {
//			
//			System.out.println(splited[i]);
//			
//			
//		}
	
		String haha = "Fuck this SHIT what a dick";
		String[] check;
		String hi; 
		hi = vulgarcheck(haha);
	//	for(int i = 0; i < check.length;i++) {
		//	System.out.println(check[i]);
			
			
		//}
		System.out.println(hi);
		
	}

	public static String vulgarcheck(String s) {
		
		String stringtoparse = s.toLowerCase();
		stringtoparse.toLowerCase();
		String[] Stringgiven = stringtoparse.split("\\s+");
		list.add("fuck");
		list.add("ass");
		list.add("shit");
//		list.add("SHIT");
//		list.add("ASS");
//		list.add("SHit");
//		list.add("ShIT");
		
		list.add("hell");
		list.add("bastard");
		list.add("dick");
		for(int i = 0; i < Stringgiven.length;i++) {
			
			for(int j = 0; j < list.size();j++) {
				
				if(Stringgiven[i].equals(list.get(j))) {
					
					Stringgiven[i] = null; 
					Stringgiven[i] = "******";
					
					
					
				}
			}
			
			
			
			
		}
		String c = newstring(Stringgiven);
		return c;
		
	}
	
	public static String newstring(String [] s) {
		String pls = ""; 
		for(int i = 0; i < s.length;i++) {
			pls = pls + " " +  s[i];
			
			
		}
		
		return pls;
		
		
	}
	public static List<Post> sorton(){
		return null;
		
		
		
		
	}
	public static String buttonclick(String s) {
		
		
		
		g++;
		//System.out.print("it wont matter if you can read this we can call the Database Nick you are a God");
		return"this is a test if this works Nick Stone may actually be a God";
	}
	
	public static int getg() {
		
		
		return g; 
	}
	
	
	
	
}
