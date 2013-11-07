public class ArrayOrder1 {
	public static void main(String[] args) {
		int a[] = new int[5];
		a[0] = 3;
		a[1] = 4;
		a[2] = 1;
		a[3] = 5;
		a[4] = 2;

		java.util.Arrays.sort(a);
		for(int i:a) {
			System.out.println("i = " +i);
		}
	}
}