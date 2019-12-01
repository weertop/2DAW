package factory2;

public class FacturaNormal extends Factura{
	
	private final double iva = 1.14;
	
	@Override
	public double getImporteIva() {
		return getImporte()*iva;
	}
}
