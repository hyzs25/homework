public class For {
	public static void main(String[] args) {
		int a[] = new int[3];

		for(int i=0; i<a.length; i++){
			a[i] = i;
			System.out.println(a[i]);
		}

		for(int i : a){
			System.out.println(i);
		}
	}
}