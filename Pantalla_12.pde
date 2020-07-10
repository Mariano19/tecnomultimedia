//Pestaña con el contenido de Pantalla 12: Encuentro grupo de sobrevivientes

void mostrarPantalla12() {

  //fondo
  cursor(ARROW);
  image (imagen12, 0, 0);
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
    text("Ya es de noche. Camino a casa me encuentro a un grupo de supervivientes armados y no \nparecen amistosos. Llegue a contar hasta tres de ellos y no creo poder abatir a todos. \nRapidamente uno de ellos me amenaza para que le entregue la comida... ", 100, height/1.3);
  }

  //escena
  if (dist(500, 400, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(500, 400, 60, 60);
  }
  if (dist(500, 400, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("No creo que pueda escapar", mouseX - 50, mouseY);
  }

  //boton negociar
  fill(230);
  if (mouseX>160-60 && mouseX<160+400 && mouseY>590-10 && mouseY<590+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1) {
    text("Negocio con ellos y les doy una parte de la comida", 100, 590);
  }

  //boton Huir
  fill(230);
  if (mouseX>160-60 && mouseX<160+150 && mouseY>640-10 && mouseY<640+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1) {
    text("Intento salir corriendo", 100, 590+50);
  } 
  //boton pelear
  fill(230);
  if (mouseX>160-60 && mouseX<160+400 && mouseY>690-10 && mouseY<690+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1) {
    text("Puedo defenderme con el arma que encontre en el super", 100, 590+100);
  }
}

void clickPantalla12() {
  println( "click en pantalla 12:Encuentro supervivientes");
  //contador
  if (mouseButton == LEFT && mouseX>width - 80 && mouseX<width-40 && mouseY>650-40 && mouseY<650+40) {
    contadorClicks++;
  } else if (mouseButton == LEFT && mouseX>40 && mouseX<60 && mouseY>650-40 && mouseY<650+40 ) {
    contadorClicks--;
  } 
  //limite contador
  if (contadorClicks == -1) {
    contadorClicks =0;
  } else if (contadorClicks == 4) {
    contadorClicks =3;
  } 


  //boton pelear
  if (contadorClicks >= 1 && mouseX>160-60 && mouseX<160+400 && mouseY>590-10 && mouseY<590+10) {
    estado = 14;
    contadorClicks = 0;//reseteo
  }  
  //boton huir
  else if (contadorClicks >= 1 && mouseX>160-60 && mouseX<160+150 && mouseY>640-10 && mouseY<640+10) {
    estado = 15;
    contadorClicks = 0;//reseteo
  }
  //boton regreso menu
  else if (contadorClicks >= 1 && mouseX>160-60 && mouseX<160+400 && mouseY>690-10 && mouseY<690+10 && arma == true) {
    estado = 14;
    contadorClicks = 0;//reseteo
  }
}
