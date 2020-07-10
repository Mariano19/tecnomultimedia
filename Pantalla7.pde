//Pestaña con el contenido de Pantalla 7: Camino por el campo

void mostrarPantalla7() {

  //fondo
  cursor(ARROW);
  image (imagen7, 0, 0);
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
    text("Voy caminando por el campo, el centro de refugiados no debe estar tan lejos. \nMenos mal que traje agua en la mochila...", 100, height/1.3);
  }
  if (contadorClicks == 1) {
    text("Despues de una larga caminata el camino se divide en dos. Hay un camion abandonado \ncon un cartel mal pintado indicando girar a izquierda. Pero en el mapa dice que \ntodavia faltan 2 kilometros ..", 100, height/1.3);
  }

  //escena
  if (dist(760, 470, mouseX, mouseY) <50) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(760, 470, 60, 60);
  } else if (dist(150, 400, mouseX, mouseY) <50) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(150, 400, 60, 60);
  }

  if (dist(760, 470, mouseX, mouseY) <50 && mousePressed) {
    fill(230);
    text("El camino se divide", mouseX-50, mouseY);
  } else if (dist(150, 400, mouseX, mouseY) <50 && mousePressed) {
    fill(230);
    text("El cartel no parece muy confiable", mouseX-100, mouseY);
  }

  //boton camino izq
  fill(230);
  if (mouseX>160-60 && mouseX<160+400 && mouseY>590-10 && mouseY<590+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 2) {
    text("Confio en el mapa que traje y sigo caminando ", 100, 590);
  }

  //boton camino derecho
  fill(230);
  if (mouseX>160-60 && mouseX<160+300 && mouseY>640-10 && mouseY<640+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 2) {
    text("Tomo el camino que indica el cartel", 100, 590+50);
  }
}

void clickPantalla7() {
  println( "click en pantalla 7:camino campo");
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


  //boton miro el mapa
  if (contadorClicks >= 2 && mouseX>160-60 && mouseX<160+500 && mouseY>590-10 && mouseY<590+10) {
    estado = 13;
    contadorClicks = 0;//reseteo
  }  
  //boton camino a la izq
  else if (contadorClicks >= 2 && mouseX>160-60 && mouseX<160+400 && mouseY>640-10 && mouseY<640+10) {
    estado = 15;
    contadorClicks = 0;//reseteo
  }
}
