package modelo;

public class Operacion {
	private double operando1;
	private double operando2;
	private char operacion;
	
	public Operacion(double operando1, double operando2, char operacion) {
		super();
		this.operando1 = operando1;
		this.operando2 = operando2;
		this.operacion = operacion;
	}

	public double getOperando1() {
		return operando1;
	}

	public void setOperando1(double operando1) {
		this.operando1 = operando1;
	}

	public double getOperando2() {
		return operando2;
	}

	public void setOperando2(double operando2) {
		this.operando2 = operando2;
	}

	public char getOperacion() {
		return operacion;
	}

	public void setOperacion(char operacion) {
		this.operacion = operacion;
	}

	public double operar() {
		double resultado = 0;
		
		switch(operacion) {
		case '+': resultado = Math.rint((operando1+operando2)*1000)/1000;
				break;
		case '-': resultado = Math.rint((operando1-operando2)*1000)/1000;
			break;
		case '*': resultado = Math.rint((operando1*operando2)*1000)/1000;
			break;
		case '/': 
			try {
				resultado = Math.rint((operando1+operando2)/1000)/1000;
			}catch(ArithmeticException e) {
				resultado = Double.POSITIVE_INFINITY;			//asignamos un valor ne caso de DIVISION POR 0
			}
		}
		
		return resultado;
	}
	
	@Override
	public String toString() {
		return operando1 + "  " + operacion + "  (" + operando2 + ") = " + operar();
	}
	
	
	
}
