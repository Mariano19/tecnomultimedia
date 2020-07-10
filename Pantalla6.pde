//Pestaña con el contenido de Pantalla 6: Callejon con perro

void mostrarPantalla6() {

  //fondo
  cursor(ARROW);
  image (imagen6, 0, 0);
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
    text("Me encuentro con un perro que ve sediento y lastimado...", 100, height/1.3);
  }

  //escena
  if (dist(400, 400, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(400, 400, 60, 60);
  }
  if (dist(400, 400, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("Un perrito", mouseX, mouseY);
  }

  //boton ayudar
  fill(230);
  if (mouseX>160-60 && mouseX<160+400 && mouseY>590-10 && mouseY<590+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1) {
    text("Lo ayudo y le acerco un poco de agua de mi mochila", 100, 590);
  }

  //boton sigo
  fill(230);
  if (mouseX>160-60 && mouseX<160+300 && mouseY>640-10 && mouseY<640+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1) {
    text("Mejor sigo, no tengo que perder tiempo", 100, 590+50);
  }
}

void clickPantalla6() {
  println( "click en pantalla 6:callejon");
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
  if (contadorClicks >= 1 && mouseX>160-60 && mouseX<160+400 && mouseY>590-10 && mouseY<590+10) {
    estado = 10;
    contadorClicks = 0;//reseteo
  }  
  //boton me vuelvo
  else if (contadorClicks >= 1 && mouseX>160-60 && mouseX<160+300 && mouseY>640-10 && mouseY<640+10) {
    estado = 5;
    contadorClicks = 0;//reseteo
  }
}
