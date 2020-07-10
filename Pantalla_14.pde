//Pestaña con el contenido de Pantalla 14:Final1
void mostrarPantalla14() {

  //fondo
  cursor(ARROW); 
  image (imagen14, 0, 0);
  rectMode(CENTER);

  //botones laterales


  fill(255);
  if (  contadorClicks == 0 && mouseX>width - 80 && mouseX<width-40 && mouseY>650-40 && mouseY<650+40 ) {
    fill(200, 0, 0);
    cursor(HAND);
  }
  if ( contadorClicks == 0 ) {
    triangle(width - 40, 650, width - 60, 650-40, width - 60, 650+40);
  }

  //texto  
  textAlign(LEFT);

  if (contadorClicks == 0) {
    noStroke();
    fill(100, 100, 100, 90);
    rect(width/2, height/1.18, width-50, height/4, 50);
  }

  if (contadorClicks == 0) {
    fill(230);
    textFont(fuenteTexto); 
    textSize(26);
    text("Volvemos a casa a salvo!!..", 100, height/1.3);
  } 

  textFont(fuenteTitulo);
  textSize(24);
  fill(255);
  if ( mouseX>512-130 && mouseX<512+130 && mouseY>630-15 && mouseY<630+15 ) {
    fill(200, 0, 0);
    cursor(HAND);
  }
  if (contadorClicks >= 1) {
    textAlign(CENTER);
    text("creditos", width/2, height/1.2);
  }
}


void clickPantalla14() {
  println( "click en pantalla 14:final1");

  //contador
  if (mouseButton == LEFT && mouseX>width - 80 && mouseX<width-40 && mouseY>650-40 && mouseY<650+40) {
    contadorClicks++;
  } else if (mouseButton == LEFT && mouseX>40 && mouseX<60 && mouseY>650-40 && mouseY<650+40 ) {
    contadorClicks--;
  } 
  //limite contador
  if (contadorClicks == -1) {
    contadorClicks =0;
  } else if (contadorClicks == 2) {
    contadorClicks =1;
  } 
  //boton "CREDITOS"
  if ( mouseX>512-130 && mouseX<512+130 && mouseY>630-15 && mouseY<630+15 ) {
    estado = 99;
    contadorClicks = 0;//reseteo
  }
}
