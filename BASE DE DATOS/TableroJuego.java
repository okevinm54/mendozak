package practica002a;

import java.util.Random;

public class TableroJuego {
    
    private String[][] oPresentacion;
    private int[][] oTablero;
    private int iMinaX,iMinaY;
    private int iTesoroX,iTesoroY;
    
    public TableroJuego() {
	
	oPresentacion = new String[6][7];
	oTablero = new int[4][5];
	
	InicializaTablero();
	PreparaPresentacion();
	AsignaTesoro(4,5);
	AsignaMina(4,5);

    }

    private void setMinaX(int iValor_) {
	iMinaX = iValor_;
	
    }

    private void setMinaY(int iValor_) {
	iMinaY = iValor_;
	
    }

    private void setTesoroX(int iValor_) {
	iTesoroX = iValor_;
    }

    private void setTesoroY(int iValor_) {
	iTesoroY = iValor_;
	
    }
    
    
    private void AsignaTesoro(int iFila_,int iColumna_) {
	int iValor = -1;
	Random oAleatorio = new Random();
	iValor = oAleatorio.nextInt(iFila_);
	setTesoroX(iValor);
	iValor = oAleatorio.nextInt(iColumna_);
	setTesoroY(iValor);
	System.out.println("Posicion Tesoro: "+String.valueOf(getTesoroX())+","
			+String.valueOf(getTesoroY()));
	oTablero[getTesoroX()][getTesoroY()] = 2;
    }

    private void AsignaMina(int iFila_,int iColumna_) {
	Random oAleatorio = new Random();
	int iValor = -1;
	while (true) {
	    iValor = oAleatorio.nextInt(iFila_);
	    if (iValor != getTesoroX()) {
		setMinaX(iValor);
		break;
	    }
	}
	while (true) {
	    iValor = oAleatorio.nextInt(iFila_);
	    if (iValor != getTesoroY()) {
		setMinaY(iValor);
		break;
	    }
	}
	
	System.out.println("Posicion Mina: "+String.valueOf(getMinaX())+","
		+String.valueOf(getMinaY()));
	oTablero[getMinaX()][getMinaY()] = 1;
	
    }
	
    private int getTesoroX() {
	return iTesoroX;
    }
    private int getTesoroY() {
	return iTesoroY;
    }
    
    private int getMinaX() {
	return iMinaX;
    }
	
    private int getMinaY() {
	return iMinaY;
    }

    private void PreparaPresentacion() {
	for (int iFila = 0;iFila < 4;iFila ++) {
	    oPresentacion[iFila] = (String.valueOf(3-iFila).trim()+",|, , , , , ").split(",");
	}
	oPresentacion[4] = (" , ,--,--,--,--,--").split(",");
	oPresentacion[5] = (" , , 0, 1, 2, 3, 4").split(",");
    }

    private void InicializaTablero() {
	for (int iFila = 0;iFila < 4;iFila ++) {
	    for (int iColumna = 0;iColumna<5;iColumna++) {
		oTablero[iFila][iColumna] = 0;
	    }
	}
    }

    public void presentaTablero() {
	String sLinea = "";
	for (int iFila = 0;iFila < 6;iFila ++) {
	    sLinea = "";
	    for (int iColumna=0;iColumna<7;iColumna++) {
		sLinea += oPresentacion[iFila][iColumna];
	    }
	   
	    System.out.println(sLinea);
	}
    }

    public void pideCordenadas() {
	// TODO Auto-generated method stub
	
    }

    public void compruebPremio() {
	// TODO Auto-generated method stub
	
    }

    public int getResultado() {
	return 0;
	
    }

    public void presentaCarga() {
	String sLinea = "";
	System.out.println("\n");
	for (int iFila = 0;iFila < 4;iFila ++) {
	    sLinea = String.valueOf(iFila)+"|";
	    for (int iColumna=0;iColumna<5;iColumna++) {
		sLinea += " "+String.valueOf(oTablero[iFila][iColumna]);
	    }
	    System.out.println(sLinea);
	}
	sLinea = "  ----------";
	System.out.println(sLinea);
	sLinea = "   0 1 2 3 4";
	System.out.println(sLinea);
	
    }

}
