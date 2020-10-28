//Pestaña con el contenido de Pantalla 7: Camino por el campo
void mostrarPantalla7() {
  //fondo
  fondoPantalla(11);
  panelConBotones();
  //texto
  if (contadorClicks == 0) {
    cuerpoTexto(100, height/1.3, 23, texto[12]);
  } else if (contadorClicks == 1) {
    cuerpoTexto(100, height/1.3, 23, texto[13]);
  } else if (contadorClicks >= 2) {
    botonesTexto(width/3, height/1.3, 24, fuenteTexto, "Confio en el mapa que traje y sigo caminando ");
    botonesTexto(width/3.6, height/1.3+50, 24, fuenteTexto, "Tomo el camino que indica el cartel");
  }
  //escena
  detallesEscena(width/7, height/1.8, 50, 50, "El cartel no parece muy confiable");
  detallesEscena(width/1.4, height/1.7, 50, 50, "El camino se divide");
}

void clickPantalla7() {
  println( "click en pantalla 7:camino campo");
  //contador
  contador(3);
  //botones
  if (contadorClicks >= 1 && clickRectangulo(width/3, height/1.3, 600, 30)) {
    estado = 13;
    reset();
  } else if (contadorClicks >= 1 && clickRectangulo(width/3.6, height/1.3+50, 600, 30)) {
    estado = 15;
    reset();
  }
}
