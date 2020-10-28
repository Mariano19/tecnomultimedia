//Pestaña con el contenido de Pantalla 10:Supermercado de noche
void mostrarPantalla10() {
  //fondo
  fondoPantalla(9);
  panelConBotones();
  //texto
  if (contadorClicks == 0) {
    cuerpoTexto(100, height/1.3, 23, texto[19]);
  } else if (contadorClicks >= 1 && arma == false) {
    cuerpoTexto(100, height/1.3, 23, texto[20]);
  } else if (contadorClicks >= 1 && arma == true) {
    cuerpoTexto(100, height/1.3, 23, texto[21]);
  }
  //escena
  detallesEscena(width/7, height/1.8, 50, 50, "La comida fresca esta podrida");
  detallesEscena(width/1.5, height/1.9, 50, 50, "Hay marcas de sangre");
  detallesEscena(width/1.1, height/1.7, 50, 50, "Encuentro un arma");
  detallesEscena(width/3, height/3, 50, 50, "Encuentro unas latas de comida");
}
void clickPantalla10() {
  println( "click en pantalla 10:super de noche");
  //contador
  contador(4);
  //pase a pantalla12
  if (contadorClicks >= 2 && arma == true) {
    estado = 12;
    reset();
  }  
  //escena
  if (clickRectangulo(width/1.1, height/1.7, 50, 50)) {
    arma = true;
    println("click arma");
  }
}
