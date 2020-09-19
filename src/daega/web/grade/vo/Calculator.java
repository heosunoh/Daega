package daega.web.grade.vo;


public class Calculator {
	private String a="", a1 ="" , a2="" ,a3="", a4="", a5="", a6="", a7="", a8="", a9="";
	private float result ,resultt, resultt1, resultt2, resultt3, resultt4, resultt5, resultt6, resultt7, resultt8, resultt9;
	private float grade1 , grade2 ,grade3, grade4, grade5, grade6, grade7, grade8, grade9, grade10;
	
	public void setgrade1(String grade1) {
		this.grade1 = Float.parseFloat(grade1);
	}
	public void setgrade2(String grade2) {
		this.grade2 = Float.parseFloat(grade2);
	}
	public void setgrade3(String grade3) {
		this.grade3 = Float.parseFloat(grade3);
	}
	public void setgrade4(String grade4) {
		this.grade4 = Float.parseFloat(grade4);
	}
	public void setgrade5(String grade5) {
		this.grade5 = Float.parseFloat(grade5);
	}
	public void setgrade6(String grade6) {
		this.grade6 = Float.parseFloat(grade6);
	}
	public void setgrade7(String grade7) {
		this.grade7 = Float.parseFloat(grade7);
	}
	public void setgrade8(String grade8) {
		this.grade8 = Float.parseFloat(grade8);
	}
	public void setgrade9(String grade9) {
		this.grade9 = Float.parseFloat(grade9);
	}
	public void setgrade10(String grade10) {
		this.grade10 = Float.parseFloat(grade10);
	}
	//
	public void seta(String a) {
		this.a = a;
	}
	public void seta1(String a1) {
		this.a1 = a1;
	}
	public void seta2(String a2) {
		this.a2 = a2;
	}
	public void seta3(String a3) {
		this.a3 = a3;
	}
	public void seta4(String a4) {
		this.a4 = a4;
	}
	public void seta5(String a5) {
		this.a5 = a5;
	}
	public void seta6(String a6) {
		this.a6 = a6;
	}
	public void seta7(String a7) {
		this.a7 = a7;
	}
	public void seta8(String a8) {
		this.a8 = a8;
	}
	public void seta9(String a9) {
		this.a9 = a9;
	}
	
	
	
	public void aCalculator() {
		if(a.equals("A+")) {
			resultt = (float) (4.5 * grade1);
		}else if(a.equals("A")) {
			resultt = (float) (4.0 * grade1);
		}else if(a.equals("B+")) {
			resultt = (float) (3.5 * grade1);
		}else if(a.equals("B")) {
			resultt = (float) (3.0 * grade1);
		}else if(a.equals("C+")) {
			resultt = (float) (2.5 * grade1);
		}else if(a.equals("C")) {
			resultt = (float) (2.0 * grade1);
		}else if(a.equals("D")) {
			resultt = (float) (1.0 * grade1);
		}else if(a.equals("F")) {
			resultt = (float) (0.0 * grade1);
		}
}
	
	public void bCalculator() {
		if(a1.equals("A+")) {
			resultt1 = (float) (4.5 * grade2);
		}else if(a1.equals("A")) {
			resultt1 = (float) (4.0 * grade2);
		}else if(a1.equals("B+")) {
			resultt1 = (float) (3.5 * grade2);
		}else if(a1.equals("B")) {
			resultt1 = (float) (3.0 * grade2);
		}else if(a1.equals("C+")) {
			resultt1 = (float) (2.5 * grade2);
		}else if(a1.equals("C")) {
			resultt1 = (float) (2.0 * grade2);
		}else if(a1.equals("D")) {
			resultt1 = (float) (1.0 * grade2);
		}else if(a1.equals("F")) {
			resultt1 = (float) (0.0 * grade2);
		}
	}
	public void cCalculator() {
		if(a2.equals("A+")) {
			resultt2 = (float) (4.5 * grade3);
		}else if(a2.equals("A")) {
			resultt2 = (float) (4.0 * grade3);
		}else if(a2.equals("B+")) {
			resultt2 = (float) (3.5 * grade3);
		}else if(a2.equals("B")) {
			resultt2 = (float) (3.0 * grade3);
		}else if(a2.equals("C+")) {
			resultt2 = (float) (2.5 * grade3);
		}else if(a2.equals("C")) {
			resultt2 = (float) (2.0 * grade3);
		}else if(a2.equals("D")) {
			resultt2 = (float) (1.0 * grade3);
		}else if(a2.equals("F")) {
			resultt2 = (float) (0.0 * grade3);
		}
	}
	public void dCalculator() {
		if(a3.equals("A+")) {
			resultt3 = (float) (4.5 * grade4);
		}else if(a3.equals("A")) {
			resultt3 = (float) (4.0 * grade4);
		}else if(a3.equals("B+")) {
			resultt3 = (float) (3.5 * grade4);
		}else if(a3.equals("B")) {
			resultt3 = (float) (3.0 * grade4);
		}else if(a3.equals("C+")) {
			resultt3 = (float) (2.5 * grade4);
		}else if(a3.equals("C")) {
			resultt3 = (float) (2.0 * grade4);
		}else if(a3.equals("D")) {
			resultt3 = (float) (1.0 * grade4);
		}else if(a3.equals("F")) {
			resultt3 = (float) (0.0 * grade4);
		}
	}
	public void eCalculator() {
		if(a4.equals("A+")) {
			resultt4 = (float) (4.5 * grade5);
		}else if(a4.equals("A")) {
			resultt4 = (float) (4.0 * grade5);
		}else if(a4.equals("B+")) {
			resultt4 = (float) (3.5 * grade5);
		}else if(a4.equals("B")) {
			resultt4 = (float) (3.0 * grade5);
		}else if(a4.equals("C+")) {
			resultt4 = (float) (2.5 * grade5);
		}else if(a4.equals("C")) {
			resultt4 = (float) (2.0 * grade5);
		}else if(a4.equals("D")) {
			resultt4 = (float) (1.0 * grade5);
		}else if(a4.equals("F")) {
			resultt4 = (float) (0.0 * grade5);
		}
	}
	public void fCalculator() {
		if(a5.equals("A+")) {
			resultt5 = (float) (4.5 * grade6);
		}else if(a5.equals("A")) {
			resultt5 = (float) (4.0 * grade6);
		}else if(a5.equals("B+")) {
			resultt5 = (float) (3.5 * grade6);
		}else if(a5.equals("B")) {
			resultt5 = (float) (3.0 * grade6);
		}else if(a5.equals("C+")) {
			resultt5 = (float) (2.5 * grade6);
		}else if(a5.equals("C")) {
			resultt5 = (float) (2.0 * grade6);
		}else if(a5.equals("D")) {
			resultt5 = (float) (1.0 * grade6);
		}else if(a5.equals("F")) {
			resultt5 = (float) (0.0 * grade6);
		}
	}
	public void gCalculator() {
		if(a6.equals("A+")) {
			resultt6 = (float) (4.5 * grade7);
		}else if(a6.equals("A")) {
			resultt6 = (float) (4.0 * grade7);
		}else if(a6.equals("B+")) {
			resultt6 = (float) (3.5 * grade7);
		}else if(a6.equals("B")) {
			resultt6 = (float) (3.0 * grade7);
		}else if(a6.equals("C+")) {
			resultt6 = (float) (2.5 * grade7);
		}else if(a6.equals("C")) {
			resultt6 = (float) (2.0 * grade7);
		}else if(a6.equals("D")) {
			resultt6 = (float) (1.0 * grade7);
		}else if(a6.equals("F")) {
			resultt6 = (float) (0.0 * grade7);
		}
	}
	public void hCalculator() {
		if(a7.equals("A+")) {
			resultt7 = (float) (4.5 * grade8);
		}else if(a7.equals("A")) {
			resultt7 = (float) (4.0 * grade8);
		}else if(a7.equals("B+")) {
			resultt7 = (float) (3.5 * grade8);
		}else if(a7.equals("B")) {
			resultt7 = (float) (3.0 * grade8);
		}else if(a7.equals("C+")) {
			resultt7 = (float) (2.5 * grade8);
		}else if(a7.equals("C")) {
			resultt7 = (float) (2.0 * grade8);
		}else if(a7.equals("D")) {
			resultt7 = (float) (1.0 * grade8);
		}else if(a7.equals("F")) {
			resultt7 = (float) (0.0 * grade8);
		}
	}
	public void iCalculator() {
		if(a8.equals("A+")) {
			resultt8 = (float) (4.5 * grade9);
		}else if(a8.equals("A")) {
			resultt8 = (float) (4.0 * grade9);
		}else if(a8.equals("B+")) {
			resultt8 = (float) (3.5 * grade9);
		}else if(a8.equals("B")) {
			resultt8 = (float) (3.0 * grade9);
		}else if(a8.equals("C+")) {
			resultt8 = (float) (2.5 * grade9);
		}else if(a8.equals("C")) {
			resultt8 = (float) (2.0 * grade9);
		}else if(a8.equals("D")) {
			resultt8 = (float) (1.0 * grade9);
		}else if(a8.equals("F")) {
			resultt8 = (float) (0.0 * grade9);
		}
	}
	public void jCalculator() {
		if(a9.equals("A+")) {
			resultt9 = (float) (4.5 * grade10);
		}else if(a9.equals("A")) {
			resultt9 = (float) (4.0 * grade10);
		}else if(a9.equals("B+")) {
			resultt9 = (float) (3.5 * grade10);
		}else if(a9.equals("B")) {
			resultt9 = (float) (3.0 * grade10);
		}else if(a9.equals("C+")) {
			resultt9 = (float) (2.5 * grade10);
		}else if(a9.equals("C")) {
			resultt9 = (float) (2.0 * grade10);
		}else if(a9.equals("D")) {
			resultt9 = (float) (1.0 * grade10);
		}else if(a9.equals("F")) {
			resultt9 = (float) (0.0 * grade10);
		}
	}
	
	
	
	public float getResultt() {
		return resultt;
	}
	public float getResultt1() {
		return resultt1;
	}
	public float getResultt2() {
		return resultt2;
	}
	public float getResultt3() {
		return resultt3;
	}
	public float getResultt4() {
		return resultt4;
	}
	public float getResultt5() {
		return resultt5;
	}
	public float getResultt6() {
		return resultt6;
	}
	public float getResultt7() {
		return resultt7;
	}
	public float getResultt8() {
		return resultt8;
	}
	public float getResultt9() {
		return resultt9;
	}
	public void getcredit() {
		result = (resultt + resultt1 + resultt2 + resultt3 + resultt4 + resultt5 + resultt6 + resultt7 + resultt8 
				+ resultt9)/(grade1 + grade2 + grade3 + grade4 + grade5 + grade6 + grade7 + grade8 + grade9 + grade10);
	}
	public float getResult() {
		return result;
	}
	

}
