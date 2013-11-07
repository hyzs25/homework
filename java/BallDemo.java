public class BallDemo {
	public static void main(String[] args) {
		Ball ball = new Ball();
		System.out.println("名称:" + ball.getName());
		System.out.println("半径:" + ball.getRadius());
	
		ball = new Ball(18.4,"红球");
		System.out.println("名称:" + ball.getName());
		System.out.println("半径:" + ball.getRadius());
	}
}