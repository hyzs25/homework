public class ArrayOrder {
	public static void main(String[] args) {
		int a[] = new int[5];
		a[0] = 3;
		a[1] = 4;
		a[2] = 1;
		a[3] = 5;
		a[4] = 2;

		//冒泡排序
		for(int i=0; i<a.length; i++){
			for(int j = i+1; j<a.length; j++){
				if(a[i]>a[j]){
					int temp = a[j];
					a[j] = a[i];
					a[i] = temp;
				}
			}
		}

		for(int i : a) {
			System.out.println("i=" +i);
		}
	}
}