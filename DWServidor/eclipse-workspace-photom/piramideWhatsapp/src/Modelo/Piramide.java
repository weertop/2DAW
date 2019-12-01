package Modelo;

public class Piramide {
	private int base;
	private int numImg;

	public Piramide(int base, int numImg) {
		this.base = base;
		this.numImg = numImg;
	}

	public int getBase() {
		return base;
	}

	public void setBase(int base) {
		this.base = base;
	}

	public int getNumImg() {
		return numImg;
	}

	public void setNumImg(int numImg) {
		this.numImg = numImg;
	}

	@Override
	public String toString() {
		return "Piramide [base=" + base + ", numImg=" + numImg + "]";
	}

}
