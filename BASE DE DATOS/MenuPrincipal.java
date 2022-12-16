package practica002a;

public class MenuPrincipal {

    private static TableroJuego oTablero;
    
    
    public static void main(String[] args) {
	oTablero = new TableroJuego();
	//while (oTablero.getResultado() == 0) {
	    oTablero.presentaTablero();
	    oTablero.presentaCarga();
	    oTablero.pideCordenadas();
	    oTablero.compruebPremio();
	//}
    }
}
