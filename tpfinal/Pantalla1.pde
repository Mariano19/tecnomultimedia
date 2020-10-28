//Pestaña con el contenido de Pantalla 1:Historia
void mostrarPantalla1() {

  //fondo
  fondoPantalla(5);
  panelConBotones();
  //Para pasar texto
  for (int i = 0; i < 4; i++) {
    if (contadorClicks == 0) {
      textFont(fuenteCredito);
      textAlign(LEFT);
      textSize(30);
      fill(230);
      text(texto[0], 100, height/1.3);
      image(imagen[2], 100, 590);
    } else if (contadorClicks == i) {
      cuerpoTexto(100, height/1.3, 23, texto[i]);
    }
  }
}
void clickPantalla1() {
  println( "click en pantalla 1:historia");
  contador(5); 

  //pase a pantalla2
  if (contadorClicks == 4) {
    estado = 2;
    reset();
  }
}
