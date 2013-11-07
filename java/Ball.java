public class Ball {
	private double radius; //半径
	private String name; //名称

	//无参数构建方法
	public Ball() {
		this(0.0, "没有名称");
	}

	//有参数构建方法
	public Ball(double radius, String name) {
		this.radius = radius;
		this.name = name;
	}

	public double getRadius() {
		return radius;
	}

	public String getName() {
		return name;
	}

	public void setRadius(double radius) {
		this.radius = radius;
	}

	public void setName(String name) {
		this.name = name;
	}
}
