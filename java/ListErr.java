import java.util.ArrayList;
import java.util.List;


public class ListErr {

	public static void main(String[] args){
		ArrayList<String> strList = new ArrayList<String>();
		strList.add("第一个元素");
		strList.add("第二个元素");
		strList.add(2, "呵呵");
		System.out.println(strList);
	}
}
