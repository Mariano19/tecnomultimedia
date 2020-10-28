//Pestaña con el contenido de Pantalla 2:Departamento
void mostrarPantalla2() {
  //fondo
  fondoPantalla(6);
  panelConBotones();
  //texto
  if (contadorClicks == 0) {
    cuerpoTexto(100, height/1.3, 23, texto[4]);
  } else if (contadorClicks >= 1 && (agua == false || mapa == false)) {
    cuerpoTexto(100, height/1.3, 23, texto[5]);
  }
  //botones
  if (contadorClicks >= 1 && mapa == true && agua == true) {
    botonesTexto(width/2.6, height/1.3, 24, fuenteTexto, "Me siento seguro en mi casa, voy al super a buscar comida");
    botonesTexto(width/3.75, height/1.3+50, 24, fuenteTexto, "Deberia ir al centro de refugiados");
    botonesTexto(width/2.95, height/1.3+100, 24, fuenteTexto, "Mmm parece que va a llover, mejor voy mañana");
  }
  //escena
  detallesEscena(width/3, height/3, 50, 50, "Me queda poca comida");
  detallesEscena(width/2, height/2.2, 50, 50, "Llevo una botella de agua");
  detallesEscena(width/1.2, height/1.5, 50, 50, "Llevo el mapa");
}

void clickPantalla2() {
  println( "click en pantalla 2:departamento");
  //contador
  contador(3);
  //botones
  if (clickRectangulo(width/2.6, height/1.3, 600, 30) && mapa == true && agua == true ) {
    estado = 3;
    reset();
  } else if (clickRectangulo(width/3.75, height/1.3+50, 400, 30) && mapa == true && agua == true) {
    estado = 4;
    reset();
  } else if (clickRectangulo(width/2.95, height/1.3+100, 600, 30) && mapa == true && agua == true) {
    estado = 2;
    reset();
  }  
  //escena
  if (clickRectangulo(width/2, height/2.2, 50, 50)) {
    agua = true;
  } else if (clickRectangulo(width/1.2, height/1.5, 50, 50)) {
    mapa = true;
  }
}
