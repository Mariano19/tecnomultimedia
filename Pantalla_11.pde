//Pestaña con el contenido de Pantalla 11: Autopista
void mostrarPantalla11() {
  //fondo
  fondoPantalla(14);
  panelConBotones();
  //texto
  if (contadorClicks == 0) {
    cuerpoTexto(100, height/1.3, 23, texto[22]);
  } else if (contadorClicks >= 1) {
    botonesTexto(width/2.25, height/1.3, 24, fuenteTexto, "Uso el bidon de combustible que habia encontrado en el estacionamiento");
    botonesTexto(width/2.6, height/1.3+50, 24, fuenteTexto, "Creo que el refugio no debe estar lejos, puedo ir caminando");
  }
  //escena
  detallesEscena(width/1.2, height/2.7, 50, 50, "Centro de refugiados a 80km");
  detallesEscena(width/3, height/1.7, 50, 50, "Mucha gente quedo atrapada intentando huir");
}

void clickPantalla11() {
  println( "click en pantalla 11:autopista");
  //contador
  contador(3);
  //botones sigo buscando
   if (contadorClicks >= 1 && clickRectangulo(width/2.25, height/1.3, 600, 30)) {
    estado = 13;
    reset();
  } else if (contadorClicks >= 1 && clickRectangulo(width/2.6, height/1.3+50, 600, 30)) {
    estado = 15;
    reset();
  }
}
