//static属性的内存分配
/*类变量（class variables）用关键字 static 修饰，在类加载的时候，分配类变
量的内存，以后再生成类的实例对象时，将共享这块内存（类变量），任何一个对象对类变
量的修改，都会影响其它对象。外部有两种访问方式：通过对象来访问或通过类名来访问。*/
public class StaticPrac {
	static UserModel um = new UserModel();
	
	public static void main(String[] args) {
		StaticPrac t1 = new StaticPrac();
		t1.um.userName = "张三";
		StaticPrac t2 = new StaticPrac();
		t2.um.userName = "李四";
		
		System.out.println(t1.um.userName);
		System.out.println(t2.um.userName);
	}

}

class UserModel {
	public String userName = "";
}

