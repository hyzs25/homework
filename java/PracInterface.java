public class PracInterface{
	public static void main(String[] args){
		AI a = new AIchild();
		a.eat();
	}
}

interface AI {
	int a = 5;
	public void eat();
}

class AIchild implements AI {
	public void eat(){
		System.out.println("这是第一个程式");
	}
}