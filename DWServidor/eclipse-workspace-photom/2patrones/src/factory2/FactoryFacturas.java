package factory2;


public class FactoryFacturas {
	public static Factura getFactura(String tipo) {
		switch(tipo) {
			case "normal": 
				return new FacturaNormal();
				//break;
			case "reducido":
				return new FacturaReducida();
				//break;
			case "super":
				return new FacturaSuperReducida();
				//break;
			default:
				return null;
		}
	}
}
