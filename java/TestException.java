public class TestException {
	public static void main(String[] args){
		try {
			add(20,80);
		} catch (MyException e) {
			e.printStackTrace();
			System.out.println(e.getMessage());
		}
	}
	
	public static void add(int a,int b) throws MyException{
		if(a + b == 100) throw new MyException("真的相等了！！！");
	}
}

class MyException extends Exception{
	public MyException(String msg){
		super(msg);
	}
}