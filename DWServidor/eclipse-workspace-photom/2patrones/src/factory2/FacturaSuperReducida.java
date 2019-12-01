package factory2;

public class FacturaSuperReducida extends Factura{
	
	private final double iva = 1.02;
	
	@Override
	public double getImporteIva() {
		return getImporte()*iva;
	}
}
