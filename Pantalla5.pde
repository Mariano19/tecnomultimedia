//Pestaña con el contenido de Pantalla 5:Supermercado de dia
void mostrarPantalla5() {
  //fondo
  fondoPantalla(9);
  panelConBotones();
  //texto
  if (contadorClicks == 0) {
    cuerpoTexto(100, height/1.3, 23, texto[9]);
  } else if (contadorClicks >= 1 && arma == false) {
    cuerpoTexto(100, height/1.3, 23, texto[10]);
  } else if (contadorClicks >= 1 && arma == true) {
    botonesTexto(width/3.3, height/1.3, 24, fuenteTexto, "Sigo en el super buscando mas suministros");
    botonesTexto(width/2.6, height/1.3+50, 24, fuenteTexto, "Me vuelvo antes de anochecer, con lo que tengo me alcanza");
  }
  //escena
  detallesEscena(width/7, height/1.8, 50, 50, "La comida fresca esta podrida");
  detallesEscena(width/1.5, height/1.9, 50, 50, "Hay marcas de sangre");
  detallesEscena(width/1.1, height/1.7, 50, 50, "Encuentro un arma");
  detallesEscena(width/3, height/3, 50, 50, "Encuentro unas latas de comida");
}

void clickPantalla5() {
  println( "click en pantalla 3:camino al supermercado");
  //contador
  contador(3);
  //botones
  if (clickRectangulo(width/3.3, height/1.3, 500, 30) && arma == true) {
    estado = 12;
    reset();
  } else if (clickRectangulo(width/2.6, height/1.3+50, 700, 30) && arma == true) {
    estado = 13;
    reset();
  }  
  //escena
  if (clickRectangulo(width/1.1, height/1.7, 50, 50)) {
    arma = true;
    println("click arma");
  }
}
