public class UseGeneral {
	public static void main(String[] args) {
		int a=9;
		int b=10;
		int c = GeneralFunction.addUp(a, b);
		System.out.println("C=" + c);
	} 
}


class GeneralFunction {
	public static int addUp(int x,int y) {
		return x+y;
	}
}

