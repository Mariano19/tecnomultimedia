//Pestaña con el contenido de Pantalla 12: Encuentro grupo de sobrevivientes
void mostrarPantalla12() {
  //fondo
  fondoPantalla(15);
  panelConBotones();
  //texto
  if (contadorClicks == 0) {
    cuerpoTexto(100, height/1.3, 23, texto[23]);
  } else if (contadorClicks >= 1) {
    botonesTexto(width/2.9, height/1.3, 24, fuenteTexto, "Negocio con ellos y les doy una parte de la comida");
    botonesTexto(width/4.7, height/1.3+50, 24, fuenteTexto, "Intento salir corriendo");
    botonesTexto(width/2.65, height/1.3+100, 24, fuenteTexto, "Puedo defenderme con el arma que encontre en el super");
  }
  //escena
  detallesEscena(width/2, height/2.4, 50, 50, "No creo que pueda escapar");
}

void clickPantalla12() {
  println( "click en pantalla 12:Encuentro supervivientes");
  //contador
  contador(4);
  //botones
  if (contadorClicks >= 1 && clickRectangulo(width/2.9, height/1.3, 600, 30)) {
    estado = 13;
    reset();
  } else if (contadorClicks >= 1 && clickRectangulo(width/4.7, height/1.3+50, 600, 30)) {
    estado = 14;
    reset();
  } else if (contadorClicks >= 1 && clickRectangulo(width/2.65, height/1.3+100, 600, 30)) {
    estado = 13;
    reset();
  }
}
