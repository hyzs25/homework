public class VariableInitalize {
	private int i;
	public void test1() {
		int x = (int) (Math.random()*100);
		int y = 0;
		int z;
		if (x > 50) {
			y = 9;
		}
		z = y + x;
	}
	
	public static void main(String[] args) {
		VariableInitalize t = new VariableInitalize();
		t.test1();
	}
}