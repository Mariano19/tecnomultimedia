//Pestaña con el contenido de Pantalla 15:Perdimos
void mostrarPantalla14() {

  //fondo
  fondoPantalla(18);
  if (contadorClicks == 0) {
    panelConBotones();
    cuerpoTexto(100, height/1.3, 23, texto[26]);
  } 

  if (contadorClicks >= 1) {
    botonesTexto(width/2, height/1.2, 24, fuenteTitulo, "   volver al inicio   ");
  }
}

void clickPantalla14() {
  println( "click en pantalla 15:Perdimos");
  //contador
  contador(2);
  //boton "VOLVER AL INICIO"
  if (contadorClicks >= 1 && clickRectangulo(width/2, height/1.2, 400, 30)) {
    reset();
    estado = 0;
    mapa = false;
    arma = false;
    agua = false;
    bidon = false;
  }
}
