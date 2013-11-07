public class Domain {
	private int a;

	public int firstmethod() {
		int j = 1;
		System.out.println("J的值是"+j+",a的值是"+a);
		return 1;
	}

	public int secondmethod(float f) {
		int j = 2;
		System.out.println("secondMethod 中 a="+a+",j="+j+",f="+f);
		return 2;
	}

	public static void main(String[] args) {
		Domain t = new Domain();
		t.firstmethod();
		t.secondmethod(3);
	}
}