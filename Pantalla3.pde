//Pestaña con el contenido de Pantalla 3:Camino al supermercado
void mostrarPantalla3() {

  //fondo
  cursor(ARROW);
  image (imagen3, 0, 0);
  rectMode(CENTER);
  noStroke();
  fill(100, 100, 100, 90);
  rect(width/2, height/1.18, width-50, height/4, 50);
  
  //botones laterales
   fill(255);
  if (  contadorClicks > 0 && mouseX>40 && mouseX<60 && mouseY>650-40 && mouseY<650+40 ) {
    fill(200, 0, 0);
    cursor(HAND);
  }
  if ( contadorClicks > 0) {
    triangle(40, 650, 40+20, 650-40, 40+20, 650+40);
  }

  fill(255);
  if ( contadorClicks < 2 && mouseX>width - 80 && mouseX<width-40 && mouseY>650-40 && mouseY<650+40 ) {
    fill(200, 0, 0);
    cursor(HAND);
  }
  if (contadorClicks < 2){
    triangle(width - 40, 650, width - 60, 650-40, width - 60, 650+40);
  }

  //texto
  textFont(fuenteTexto);
  fill(230);
  textAlign(LEFT);
  textSize(23);
  if (contadorClicks == 0) {
    text("Me dirijo caminando al supermercado, si queda algo de comida en la ciudad es alli. \nTengo que tener cuidado de grupos de saqueadores que merodean por el lugar. \nLo mejor seria volver antes del anochecer", 100, height/1.3);
  }
  if (contadorClicks == 1) {
    text("Mientras voy caminando escucho un ruido fuerte en un callejon", 100, height/1.3);
  }

  //escena
  if (dist(150, 450, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(150, 450, 60, 60);
  } else if (dist(650, 400, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(650, 400, 60, 60);
  }

  if (dist(150, 450, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("Es un auto abandonado", mouseX-50, mouseY);
  } else if (dist(650, 400, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("La basura se acumula", mouseX-50, mouseY);
  }

  //boton llego al supermercado
  fill(230);
  if (mouseX>160-60 && mouseX<160+400 && mouseY>590-10 && mouseY<590+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 2) {
    text("Mejor me apuro a llegar al supermercado", 100, 590);
  }

  //boton voy al callejon
  fill(230);
  if (mouseX>160-60 && mouseX<160+200 && mouseY>640-10 && mouseY<640+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 2) {
    text("Voy a mirar que paso ", 100, 590+50);
  }
}

void clickPantalla3() {
  println( "click en pantalla 3:camino al supermercado");
  //contador
  if (mouseButton == LEFT && mouseX>width - 80 && mouseX<width-40 && mouseY>650-40 && mouseY<650+40) {
    contadorClicks++;
  } else if (mouseButton == LEFT && mouseX>40 && mouseX<60 && mouseY>650-40 && mouseY<650+40 ) {
    contadorClicks--;
  } 

  //limite contador
  if (contadorClicks == -1) {
    contadorClicks =0;
  } else if (contadorClicks == 3) {
    contadorClicks =2;
  } 


  //boton llego al supermercado
  if (contadorClicks >= 2 && mouseX>160-60 && mouseX<160+400 && mouseY>590-10 && mouseY<590+10) {
    estado = 5;
    contadorClicks = 0;//reseteo
  }  
  //boton voy al callejon
  else if (contadorClicks >= 2 && mouseX>160-60 && mouseX<160+200 && mouseY>640-10 && mouseY<640+10) {
    estado = 6;
    contadorClicks = 0;//reseteo
  }
}
