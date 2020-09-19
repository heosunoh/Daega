package daega.web.grade.vo;

public class Grade {
	private int num1;
	private float num2;
	private int num3;
	private float num4;
	private float result;
	
	public void setNum1(String num1) {
		this.num1 = Integer.parseInt(num1);
	}
	public void setNum2(String num2) {
		this.num2 = Float.parseFloat(num2);
	}
	public void setNum3(String num3) {
		this.num3 = Integer.parseInt(num3);
	}
	public void setNum4(String num4) {
		this.num4 = Float.parseFloat(num4);
	}
	public void Calculator() {
		result = (((num3+num1)*num4)-(num1*num2))/num3;
	}
	public float getResult() {
		return result;
	}
	

}
