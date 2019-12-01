package factory2;

public class FacturaReducida extends Factura{

	private final double iva = 1.07;
	
	@Override
	public double getImporteIva() {
		return getImporte()*iva;
	}
}
