//Pestaña con el contenido de Pantalla 11: Autopista

void mostrarPantalla11() {

  //fondo
  cursor(ARROW);
  image (imagen11, 0, 0);
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
  if ( contadorClicks < 1 && mouseX>width - 80 && mouseX<width-40 && mouseY>650-40 && mouseY<650+40 ) {
    fill(200, 0, 0);
    cursor(HAND);
  }
  if (contadorClicks < 1){
    triangle(width - 40, 650, width - 60, 650-40, width - 60, 650+40);
  }

  //texto
  textFont(fuenteTexto);
  fill(230); 
  textAlign(LEFT);
  textSize(23);
  if (contadorClicks == 0) {
    text("Despues de conducir un rato empiezo a perder potencia en el motor. \nYa no me queda nada de combustibe... ", 100, height/1.3);
  }

  //escena
  if (dist(350, 400, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(350, 400, 60, 60);
  } else if (dist(860, 270, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(860, 270, 60, 60);
  }

  if (dist(350, 400, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("Mucha gente quedo atrapada intentando huir", mouseX-100, mouseY);
  } else if (dist(860, 270, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("Centro de refugiados a 80km", mouseX-100, mouseY);
  }

  //boton cargo mas combustible
  fill(230);
  if (mouseX>160-60 && mouseX<160+600 && mouseY>590-10 && mouseY<590+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1) {
    text("Uso el bidon de combustible que habia encontrado en el estacionamiento", 100, 590);
  }

  //boton sigo caminando
  fill(230);
  if (mouseX>160-60 && mouseX<160+500 && mouseY>640-10 && mouseY<640+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1) {
    text("Creo que el refugio no debe estar lejos, puedo ir caminando", 100, 590+50);
  }
}

void clickPantalla11() {
  println( "click en pantalla 11:autopista");
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


  //boton sigo buscando
  if (contadorClicks >= 1 && mouseX>160-60 && mouseX<160+600 && mouseY>590-10 && mouseY<590+10) {
    estado = 13;
    contadorClicks = 0;//reseteo
  }  
  //boton me vuelvo
  else if (contadorClicks >= 1 && mouseX>160-60 && mouseX<160+500 && mouseY>640-10 && mouseY<640+10) {
    estado = 15;
    contadorClicks = 0;//reseteo
  }
}
