//构造方法，同initalize，方法名必须与类名同名且没有方法的返回类型（包括没有void），构造方法一般都利用public来说明
public class Initalize{
	public Initalize(int a, int b){
		width = a;
		height = b;
	}
}
/*每个类至少有一个构造方法。如果不写一个构造方法，Java 编程语言将提供一个默认的，
该构造方法没有参数，而且方法体为空。
注意：如果一个类中已经定义了构造方法则系统不再提供默认的构造方法*/