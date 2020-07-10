//Pestaña con el contenido de Pantalla 4:Camino al centro de refugiados
void mostrarPantalla4() {

  //fondo
  cursor(ARROW);
  image (imagen4, 0, 0);
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
    text("El centro de refugiados se encuentra a las afueras de la ciudad, es un camino largo. \n...", 100, height/1.3);
  }

  //boton camino1
  if (mouseX>160-60 && mouseX<160+400 && mouseY>580-15 && mouseY<580+15) {
    fill(200, 0, 0);
  }
  if (contadorClicks == 1) {
    text("Lo mejor es ir caminando asi paso desapercibido", 100, 590);
  }

  //boton camino2
  fill(230);
  if (mouseX>160-60 && mouseX<160+400 && mouseY>640-10 && mouseY<640+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks == 1) {
    text("Buscar un auto en la vieja estacion de servicio", 100, 590+50);
  }

  //boton camino3
  fill(230);
  if (mouseX>160-60 && mouseX<160+400 && mouseY>690-10 && mouseY<690+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks == 1) {
    text("Buscar un auto en el estacionamiento del centro", 100, 590+100);
  }
}

void clickPantalla4() {
  println( "click en pantalla 4:camino2");
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

  //boton camino1
  if (mouseX>160-60 && mouseX<160+400 && mouseY>590-10 && mouseY<590+10 ) {
    estado = 7;
    contadorClicks = 0;//reseteo
  }
  //boton camino2
  else if (mouseX>160-60 && mouseX<160+400 && mouseY>640-10 && mouseY<640+10) {
    estado = 8;
    contadorClicks = 0;//reseteo
  }  
  //boton camino3
  else if (mouseX>160-60 && mouseX<160+400 && mouseY>690-10 && mouseY<690+10) {
    estado = 9;
    contadorClicks = 0;//reseteo
  }
}
