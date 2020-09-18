//funcion crear fondo
void fondoPantalla(int i) {
  pushStyle();
  rectMode(CENTER);
  image (imagen[i], 0, 0);
  //imagen[i].resize(width, height);
  popStyle();
}

//crea el panel de abajo con las flechas
void panelConBotones () {
  pushStyle();
  noStroke();
  fill(100, 100, 100, 90);
  rect(width/2, height-118, width-50, 192, 50);

  cambioColor(width/25, height -118, 40, 80);
  triangle(40, height -118, 40+20, height - 158, 40+20, height-78); 

  cambioColor (width - 50, height -118, 40, 80);  
  triangle(width - 40, height -118, width - 60, height - 158, width - 60, height-78);

  popStyle();
}

//crea elipses y texto cuando hacemos click
void detallesEscena (float x, float y, int ancho, int alto, String texto) {
  pushStyle();
  if (clickRectangulo (x, y, ancho, alto)) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    noStroke();
    ellipse(x, y, ancho, alto);
  }
  if (clickRectangulo (x, y, ancho, alto) && mousePressed) {
    fill(230);
    text(texto, mouseX - texto.length()*5, mouseY);
  }
  popStyle();
}

//recibe ccordenadas de un rectangulo y 
//devuelve true false si el mouse esta dentro
boolean clickRectangulo (float x, float y, int ancho, int alto) {
  if ( mouseX>x-ancho/2 && mouseX<x+ancho/2 && mouseY>y-alto/2-10 && mouseY<y+alto/2-10 ) {
    return true;
  } else {
    return false;
  }
}

//cambia de color blanco a rojo cuando pasas el mouse y suma 1 al contador con mousepressed
void cambioColor(float x, float y, int ancho, int alto) {   
  fill(255);  
  if ( clickRectangulo(x, y, ancho, alto)) {
    fill(200, 0, 0);
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
}

// Boton: Cambio de color + texto
void botonesTexto(float x, float y, int tam, PFont fuente, String texto) {
  pushStyle();
  textAlign(CENTER);
  textFont(fuente);
  textSize(tam);  
  cambioColor(x, y, texto.length()*10, 30);
  text(texto, x, y);
  popStyle();
}

//Contador y limites en botones laterales ++ y --
void contador(int limite) {
  if (clickRectangulo(width - 50, height -118, 40, 80) && mouseButton == LEFT ) {
    contadorClicks++;
  } else if (clickRectangulo(width /25, height -118, 40, 80) && mouseButton == LEFT ) {
    contadorClicks--;
  }
  if (contadorClicks == -1) {
    contadorClicks =0;
  } else if (contadorClicks == limite) {
    contadorClicks =limite-1;
  }
}

void cuerpoTexto(float x, float y, int tam, String texto) {
  pushStyle();
  fill(230);
  textAlign(LEFT);
  textFont(fuenteTexto);
  textSize(tam);  
  text(texto, x, y);
  popStyle();
}

//Resetea todas las variables
void reset() {
  vDialogo = 0;
  posY = 0;
  contadorClicks = 0;
}
