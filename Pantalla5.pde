//Pestaña con el contenido de Pantalla 5:Supermercado de dia

void mostrarPantalla5() {

  //fondo
  cursor(ARROW);
  image (imagen5, 0, 0);
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
    text("Llego al supermercado y esta desierto, quedan algunas en latas y una botella de agua. \nQuizas en las gondolas del fondo encuentre algo mas...", 100, height/1.3);
  } else if (contadorClicks >= 1 && arma == false) {
    text("Busca comida y cosas utiles", 100, height/1.3);
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
  } else if (dist(850, 450, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(850, 450, 60, 60);
  } else if (dist(430, 300, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(430, 300, 60, 60);
  }

  if (dist(150, 450, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("La comida fresca esta podrida", mouseX-50, mouseY);
  } else if (dist(650, 400, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("Hay marcas de sangre", mouseX-50, mouseY);
  } else if (dist(850, 450, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("Encuentro un arma", mouseX-50, mouseY);
  } else if (dist(430, 300, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("Encuentro unas latas de comida y agua", mouseX-100, mouseY);
  }

  //boton sigo buscando
  fill(230);
  if (mouseX>160-60 && mouseX<160+400 && mouseY>590-10 && mouseY<590+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1 && arma == true) {
    text("Sigo en el super buscando mas suministros", 100, 590);
  }

  //boton me vuelvo
  fill(230);
  if (mouseX>160-60 && mouseX<160+500 && mouseY>640-10 && mouseY<640+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1 && arma == true) {
    text("Me vuelvo antes de anochecer, con lo que tengo me alcanza", 100, 590+50);
  }
}

void clickPantalla5() {
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


  //boton sigo buscando
  if (contadorClicks >= 1 && mouseX>160-60 && mouseX<160+400 && mouseY>590-10 && mouseY<590+10 && arma == true) {
    estado = 12;
    contadorClicks = 0;//reseteo
  }  
  //boton me vuelvo
  else if (contadorClicks >= 1 && mouseX>160-60 && mouseX<160+500 && mouseY>640-10 && mouseY<640+10 && arma == true) {
    estado = 14;
    contadorClicks = 0;//reseteo
  }  
  //escena
  if (dist(850, 450, mouseX, mouseY) <60) {
    arma = true;
    println("click arma");
  }
}
