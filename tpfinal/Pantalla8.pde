//Pestaña con el contenido de Pantalla 8: Estacion de servicio
void mostrarPantalla8() {
  //fondo
  fondoPantalla(12);  
  panelConBotones();
  //texto
  if (contadorClicks == 0) {
    cuerpoTexto(100, height/1.3, 23, texto[14]);
  } else if (contadorClicks >= 1) {
    botonesTexto(width/3, height/1.3, 24, fuenteTexto, "Sigo buscando algun auto en el estacionamiento");
    botonesTexto(width/2.7, height/1.3+50, 24, fuenteTexto, "El refugio no debe estar muy lejos, puedo ir caminando");
  }
  //escena
  detallesEscena(width/3, height/1.8, 50, 50, "La estacion esta destruida");
}

void clickPantalla8() {
  println( "click en pantalla 8:estacion de servicio");
 //contador
  contador(3);
  //boton estacionamiento
  if (contadorClicks >= 1 && clickRectangulo(width/3, height/1.3, 600, 30)) {
    estado = 9;
    reset();
  } else if (contadorClicks >= 1 && clickRectangulo(width/2.7, height/1.3+50, 600, 30)) {
    estado = 7;
    reset();
  }
}
