package com.hy.calculator.test;

import com.hy.calculator.MyCalculator;

public class MyCalculatorTest {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		MyCalculator cal = new MyCalculator();
		//求加法
		Double addresult = cal.addMethod(33.0, 55.0);
		System.out.println(addresult);
	}

}
