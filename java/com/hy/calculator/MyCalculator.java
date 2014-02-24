package com.hy.calculator;

public class MyCalculator {
	
	/*
	 * 加法
	 */
	public Double addMethod(Double first, Double second){
		return first + second;
	}
	/*
	 * 减法
	 */
	public Double subMethod(Double first, Double second){
		return first - second;
	}
	/*
	 * 乘法
	 */
	public Double multiMethod(Double first, Double second){
		return first * second;
	}
	/*
	 * 除法
	 */
	public Double divMethod(Double first, Double second) throws ArithmeticException{
		Double result = null;
		try{
		result = first / second;
		}catch(ArithmeticException e){
			System.out.println("除数不可为0");
		}
		return result;
	}
	/*
	 * 平方根
	 */
	public Double sqrtMethod(Double a){
		return Math.sqrt(a);
	}
	/*
	 * 阶乘
	 */
	public Double facMethod(double first, int second){
		Double result = (double) 1;
		
		if (second <= 0){
			System.out.println("阶乘数需>=0");
		}else{
		for(int i = 0; i < second; i++){
			result = result * first;
		}
			}
		return result;
	}
	/*
	 * 判断素数
	 */
	public void primeMethod(int a) throws Exception{
		try{
			for(int i = 2; i <= Math.sqrt(a); i++){
				if(a % i== 0)
		          {
		              System.out.println("该数不是素数");;
		          }else{
		        	  System.out.println("该数是素数");
		          }
			}
		}catch(Exception e){
			System.out.println("请输入一个正确的数来判断是否为素数！");
		}
	}
}
