package cn.javass.javatest;

public class Car {
	private String make;
	private int tyre;
	private int wheel;

	public Car() {
		//初始化属性
		make = "BMW";
		tyre = 4;
		wheel = 1;
	}

	public double run(int oil) {
		//进行具体的功能处理
		return 200.0;
	}
}