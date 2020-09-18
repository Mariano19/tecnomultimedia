//Pestaña con el contenido de Pantalla 13:Finales
void mostrarPantalla13() {
  //fondo  
  if ( bidon == true) {
    fondoPantalla(16);
  } 
  if (  contadorClicks == 0 && bidon == true) {
    panelConBotones();
    cuerpoTexto(100, height/1.3, 23, texto[24]);
  } 
  if ( bidon == false) {
    fondoPantalla(17);
  } 
  if (contadorClicks == 0 && bidon == false) {
    panelConBotones();
    cuerpoTexto(100, height/1.3, 23, texto[25]);
  } 
  if (contadorClicks >= 1) {
    botonesTexto(width/2, height/1.2, 24, fuenteTitulo, "   creditos   ");
  }
}

void clickPantalla13() {
  println( "click en pantalla 13:final2");
  //contador
  contador(2);
  //boton "CREDITOS"
  if (contadorClicks >= 1 && clickRectangulo(width/2, height/1.2, 400, 30)) {
    estado = 99;
    reset();
  }
}
