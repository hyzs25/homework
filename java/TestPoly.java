
public class TestPoly {
	public static void main(String[] args){
		Animal[] a = new Animal[3];
		a[0] = new Dog();
		a[1] = new Cat();
		a[2] = new Tiger();
		for(int i=0; i<a.length; i++){
			a[i].eat();
		}
	}
}

class Animal {
	public void eat(){};
}

class Dog extends Animal {
	public void eat(){
		System.out.println("Dog eat bone.......");
	}
}

class Cat extends Animal {
	public void eat() {
		System.out.println("Cat eat fish.......");
	}
}

class Tiger extends Animal {
	public void eat() {
		System.out.println("Tiger eat person.......");
	}
}