//Pestaña con el contenido de Pantalla 3:Camino al supermercado
void mostrarPantalla3() {
  //fondo
  fondoPantalla(7);
  panelConBotones();
  //texto
  if (contadorClicks == 0) {
    cuerpoTexto(100, height/1.3, 23, texto[6]);
  } else if (contadorClicks == 1) {
    cuerpoTexto(100, height/1.3, 23, texto[7]);
  } else if (contadorClicks >= 2) {
    botonesTexto(width/3.3, height/1.3, 24, fuenteTexto, "Mejor me apuro a llegar al supermercado");
    botonesTexto(width/4.7, height/1.3+50, 24, fuenteTexto, "Voy a mirar que paso ");
  }
  //escena
  detallesEscena(width/8, height/1.8, 50, 50, "Es un auto abandonado");
  detallesEscena(width/1.5, height/1.9, 50, 50, "La basura se acumula");
}

void clickPantalla3() {
  println( "click en pantalla 3:camino al supermercado");
  //contador
  contador(3);
  //botones 
  if (contadorClicks >= 2 && clickRectangulo(width/3.3, height/1.3, 400, 30)) {
    estado = 5;
    reset();
  } else if (contadorClicks >= 2 && clickRectangulo(width/4.7, height/1.3+50, 200, 30)) {
    estado = 6;
    reset();
  }
}
