//Pestaña con el contenido de Pantalla 9:Estacionamiento
void mostrarPantalla9() {
  //fondo
  fondoPantalla(13);
  panelConBotones();
  //texto
  if (contadorClicks == 0) {
    cuerpoTexto(100, height/1.3, 23, texto[15]);
  } else if (contadorClicks == 1) {
    cuerpoTexto(100, height/1.3, 23, texto[16]);
  } else if (contadorClicks >= 2 && bidon == false) {
    cuerpoTexto(100, height/1.3, 23, texto[17]);
  } else if (contadorClicks >= 2 && bidon == true) {
    cuerpoTexto(100, height/1.3, 23, texto[18]);
  }
  //escena
  detallesEscena(width/3, height/1.9, 50, 50, "El auto esta destruido");
  detallesEscena(width/1.6, height/2, 50, 50, "No arranca");
  detallesEscena(width/1.2, height/1.7, 50, 50, "Encontre un bidon con combustible");
}
void clickPantalla9() {
  println( "click en pantalla 9:estacionamiento");
  //contador
  contador(5);
  //pase a pantalla11
  if (contadorClicks >= 4 && bidon == true && clickRectangulo (width - 50, height -118, 40, 80)) {
    estado = 11;
    reset();
  }
  //escena
  if (clickRectangulo(width/1.2, height/1.7, 50, 50)) {
    bidon = true;
    println("click bidon");
  }
}
