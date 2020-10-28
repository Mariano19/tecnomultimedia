//Pestaña con el contenido de Pantalla 4:Camino al centro de refugiados
void mostrarPantalla4() {
  //fondo
  fondoPantalla(8);
  panelConBotones();
  //texto
  if (contadorClicks == 0) {
    cuerpoTexto(100, height/1.3, 23, texto[8]);
  } else if (contadorClicks == 1) {
    botonesTexto(width/3, height/1.3, 24, fuenteTexto, "Lo mejor es ir caminando asi paso desapercibido");
    botonesTexto(width/3.1, height/1.3+50, 24, fuenteTexto, "Buscar un auto en la vieja estacion de servicio");
    botonesTexto(width/3, height/1.3+100, 24, fuenteTexto, "Buscar un auto en el estacionamiento del centro");
  }
}

void clickPantalla4() {
  println( "click en pantalla 4:camino2");
  //contador
  contador(3);
  //botones 
  if (contadorClicks >= 1 && clickRectangulo(width/3, height/1.3, 600, 30)) {
    estado = 7;
    reset();
  } else if (contadorClicks >= 1 && clickRectangulo(width/3.1, height/1.3+50, 600, 30)) {
    estado = 8;
    reset();
  } else if (contadorClicks >= 1 && clickRectangulo(width/3, height/1.3+100, 600, 30)) {
    estado = 9;
    reset();
  }
}
