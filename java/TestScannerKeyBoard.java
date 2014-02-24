import java.util.Scanner;

public class TestScannerKeyBoard {
	
	public static void main(String[] args){
		Scanner in = new Scanner(System.in);
		in.useDelimiter("\t");
		while(in.hasNext()){
			String s = in.next();
			System.out.println(s);
		}
	}
}
