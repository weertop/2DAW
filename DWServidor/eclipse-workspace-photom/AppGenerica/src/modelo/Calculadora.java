package modelo;

public class Calculadora {
	private double opA;
	private double opB;
	private String operador;
	private double resultado;
	
	public Calculadora(double opA, double opB, String operador) {
		this.opA = opA;
		this.opB = opB;
		this.operador = operador;
	}

	public double getOpA() {
		return opA;
	}

	public void setOpA(double opA) {
		this.opA = opA;
	}

	public double getOpB() {
		return opB;
	}

	public void setOpB(double opB) {
		this.opB = opB;
	}

	public String getOperador() {
		return operador;
	}

	public void setOperador(String operador) {
		this.operador = operador;
	}

	public double operacion(double opA,double opB,String operador) {
		switch(operador) {
		case "+": resultado=opA+opB;
				break;
		case "-": resultado=opA-opB;
				break;
		case "*": resultado=opA*opB;
				break;
		case "/": resultado=opA/opB;
				break;
		}
		
		return resultado;
	}
	
	@Override
	public String toString() {
		return "Calculadora [opA=" + opA + ", opB=" + opB + ", operador=" + operador + "]";
	}
	
	
}
