//pestaña con el contenido de Pantalla 0:Menu 
void mostrarPantalla0() {    
  pushStyle();
  //fondo
  tint(vDialogo-100, vDialogo-100, vDialogo);
  if (posY> 0 && posY<80) {
    image(imagen[1], 0, 80-posY);
  } else {
    image(imagen[1], 0, 0);
  }
  //imagen[1].resize(width, height);
  fondoPantalla(0);  
  //efecto luz ventana
  noStroke();
  float i = random(0, 20);
  if (i > 18 && frameCount >100) {
    fill(150, 100, 0);
    rect(405, 444, 10, 38, 2);
  }
  noTint();  
  botonesTexto(width/6, height-100, 24, fuenteTitulo, "  creditos   ");
  botonesTexto(width/6, height-200, 24, fuenteTitulo, "   empezar    ");
  //sonido.loop();
  //Actualizo Valores
  posY +=0.8;
  vDialogo += 2;
  popStyle();
}

void clickPantalla0() {
  println( "click en pantalla 0");
  //boton "EMPEZAR"
  if ( clickRectangulo (width/6, height-200, 200, 40 )) {
    estado = 1;
    reset();
  }
  //boton "CREDITOS"
  else if ( clickRectangulo (width/6, height-100, 200, 40 )) {
    estado = 99;
    reset();
  }
}
