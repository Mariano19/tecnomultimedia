//Pestaña con el contenido de Pantalla 6: Callejon con perro
void mostrarPantalla6() {
  //fondo
  fondoPantalla(10);
  panelConBotones();
  //texto
  if (contadorClicks == 0) {
    cuerpoTexto(100, height/1.3, 23, texto[11]);
  } else if (contadorClicks >= 1) {
    botonesTexto(width/2.8, height/1.3, 24, fuenteTexto, "Lo ayudo y le acerco un poco de agua de mi mochila");
    botonesTexto(width/3.35, height/1.3+50, 24, fuenteTexto, "Mejor sigo, no tengo que perder tiempo");
  }
  //escena
  detallesEscena(width/3, height/1.7, 50, 50, "Un perrito");
}

void clickPantalla6() {
  println( "click en pantalla 6:callejon");
  //contador
  contador(3);
  //botones
  if (contadorClicks >= 1 && clickRectangulo(width/2.8, height/1.3, 600, 30)) {
    estado = 10;
    reset();
  } else if (contadorClicks >= 1 && clickRectangulo(width/3.35, height/1.3+50, 600, 30)) {
    estado = 5;
    reset();
  }
}
