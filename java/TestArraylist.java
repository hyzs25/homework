import java.util.ArrayList;
import java.util.Iterator;

public class TestArraylist {
	public static void main(String[] args){
		ArrayList list = new ArrayList();
		list.add("abc");
		list.add("hik");
		list.add(new Integer(4));
		list.add(new Double(3.45));
		print(list);
	}
	
	public static void print(ArrayList list){
		Iterator it = list.iterator();
		while(it.hasNext()){
			Object o = it.next();
			System.out.println(o);
		}
	}
}