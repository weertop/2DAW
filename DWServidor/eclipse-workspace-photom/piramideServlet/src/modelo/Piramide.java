package modelo;

public class Piramide {
	private int base;
	private String nomImg;
	
	
	
	public Piramide(int base, String nomImg) {
		this.base = base;
		this.nomImg = nomImg;
	}
	public int getBase() {
		return base;
	}
	public void setBase(int base) {
		this.base = base;
	}
	public String getNomImg() {
		return nomImg;
	}
	public void setNumImg(String nomImg) {
		this.nomImg = nomImg;
	}
	@Override
	public String toString() {
		return "Piramide [base=" + base + ", nomImg=" + nomImg + "]";
	}
	
	
}
