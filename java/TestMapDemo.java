import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.Map.Entry;


public class TestMapDemo {
	public static void main(String[] args){
		Map<String, String> map = new HashMap<String, String>();
		map.put("C++", "123");
		map.put("corejava", "asd");
		map.put("java web", "asdfddf");
		System.out.println(map.get("C++"));
		System.out.println(map.get("============================="));
		printvalue(map);
		printkeyvaluepairs(map);
	}
//迭代方式1	
	public static void printvalue(Map<String, String> m){
		Collection<String> c = m.values();
		Iterator<String> x = c.iterator();
		while(x.hasNext()){
			String s = (String)x.next();
			System.out.println(s);
		}
	}
	
//迭代方式2	
	public static void printkeyvaluepairs(Map<String, String> m){
		Set s = m.keySet();
		Iterator w = s.iterator();
		while(w.hasNext()){
			String key = (String) w.next(); 
			String value = (String) m.get(key);
			System.out.println(key + "=======" + value);
		}
	}
	
//迭代方式3
	public static void printWithEntrySet(Map<String, String> m){
		Set s = m.entrySet();
		Iterator q = s.iterator();
		while(q.hasNext()){
			Entry it = (Entry)q.next();
			String key = (String)it.getKey();
			String value = (String)it.getValue();
			System.out.println(key + "======" + value);	
			}
	}
}