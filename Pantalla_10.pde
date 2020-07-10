//Pestaña con el contenido de Pantalla 10:Supermercado de noche

void mostrarPantalla10() {

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
  if ( mouseX>width - 80 && mouseX<width-40 && mouseY>650-40 && mouseY<650+40 ) {
    fill(200, 0, 0);
    cursor(HAND);
  }
  triangle(width - 40, 650, width - 60, 650-40, width - 60, 650+40);

  //texto
  textFont(fuenteTexto);  
  fill(230);  
  textAlign(LEFT);
  textSize(23);

  //Para pasar texto
  if (contadorClicks == 0) {
    text("Despues de ayudar al perro llego al supermercado y esta desierto, quedan algunas en latas \ny una botella de agua. Quizas en las gondolas del fondo encuentre algo mas...", 100, height/1.3);
  } else if (contadorClicks >= 1 && arma == false) {
    text("Busca comida y cosas utiles", 100, height/1.3);
  } else if (contadorClicks >= 1 && arma == true) {
    text("Me llevo todo lo que encontre y para mi sorpresa el perrito que ayude me esta esperando \nen la puerta, moviendo la cola. \nYa esta anocheciendo, mejor vuelvo a casa con mi nuevo amigo...", 100, height/1.3);
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
}


void clickPantalla10() {
  println( "click en pantalla 10:super de noche");

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
  //pase a pantalla12
  if (contadorClicks >= 2 && arma == true) {
    estado = 12;
    contadorClicks = 0; //reseteo
  }  
  //items
  if (dist(850, 450, mouseX, mouseY) <60) {
    arma = true;
    println("click arma");
  }
}
