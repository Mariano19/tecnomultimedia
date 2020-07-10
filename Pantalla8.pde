//Pestaña con el contenido de Pantalla 8: Estacion de servicio

void mostrarPantalla8() {

  //fondo
  cursor(ARROW);
  image (imagen8, 0, 0);
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
    text("La estacion de servicio se encuentra destruida, quedan algunos vehiculos pero ninguno \nparece funcionar... ", 100, height/1.3);
  }

  //escena
  if (dist(200, 400, mouseX, mouseY) <50) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(200, 400, 60, 60);
  }
  if (dist(200, 400, mouseX, mouseY) <50 && mousePressed) {
    fill(230);
    text("La estacion esta destruida", mouseX-100, mouseY);
  }

  //boton estacionamiento
  fill(230);
  if (mouseX>160-60 && mouseX<160+400 && mouseY>590-10 && mouseY<590+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1) {
    text("Sigo buscando algun auto en el estacionamiento", 100, 590);
  }

  //boton camino
  fill(230);
  if (mouseX>160-60 && mouseX<160+400 && mouseY>640-10 && mouseY<640+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1) {
    text("El refugio no debe estar muy lejos, puedo ir caminando", 100, 590+50);
  }
}

void clickPantalla8() {
  println( "click en pantalla 8:estacion de servicio");
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


  //boton estacionamiento
  if (contadorClicks >= 1 && mouseX>160-60 && mouseX<160+400 && mouseY>590-10 && mouseY<590+10) {
    estado = 9;
    contadorClicks = 0;//reseteo
  }  
  //boton camino
  else if (contadorClicks >= 1 && mouseX>160-60 && mouseX<160+400 && mouseY>640-10 && mouseY<640+10) {
    estado = 7;
    contadorClicks = 0;//reseteo
  }
}
