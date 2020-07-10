//Pestaña con el contenido de Pantalla 2:Departamento
void mostrarPantalla2() {

  //fondo
  cursor(ARROW);
  image (imagen2, 0, 0);
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
    text("Ya no me queda mucha comida, tengo que salir a buscar provisiones o irme a un lugar \nseguro. Deberia llevar algunas cosas para el viaje como la mochila y un poco de agua. \n...", 100, height/1.3);
  }
  if (contadorClicks >= 1 && agua == false) {
    text("Busca en la habitacion objetos utiles para llevar", 100, 590);
  } else if (contadorClicks >= 1 && mapa == false) {
    text("Busca en la habitacion objetos utiles para llevar", 100, 590);
  }


  //boton camino1
  if (mouseX>160-60 && mouseX<160+500 && mouseY>580-15 && mouseY<580+15) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1 && mapa == true && agua == true) {
    text("Me siento seguro en mi casa, voy al super a buscar comida", 100, 590);
  }

  //boton camino2
  fill(230);
  if (mouseX>160-60 && mouseX<160+250 && mouseY>640-10 && mouseY<640+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1 && mapa == true && agua == true) {
    text("Deberia ir al centro de refugiados", 100, 590+50);
  }

  //boton camino3
  fill(230);
  if (mouseX>160-60 && mouseX<160+400 && mouseY>690-10 && mouseY<690+10) {
    fill(200, 0, 0);
  }
  if (contadorClicks >= 1 && mapa == true && agua == true) {
    text("Mmm parece que va a llover, mejor voy mañana", 100, 590+100);
  }        

  //escena
  if (dist(370, 220, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(370, 220, 60, 60);
  } else if (dist(500, 350, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(500, 350, 60, 60);
  } else if (dist(850, 500, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(850, 500, 60, 60);
  }


  if (dist(370, 220, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("Me queda poca comida", mouseX-100, mouseY);
  } else if (dist(500, 350, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("Llevo una botella de agua", mouseX-120, mouseY);
  } else if (dist(850, 500, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("Llevo el mapa", mouseX-50, mouseY);
  }
}

void clickPantalla2() {
  println( "click en pantalla 2:departamento");
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

  //boton camino al super
  if (mouseX>160-60 && mouseX<160+500 && mouseY>590-10 && mouseY<590+10 && mapa == true && agua == true ) {
    estado = 3;
    contadorClicks = 0;//reseteo
  }
  //boton camino al centro de refugiados
  else if (mouseX>160-60 && mouseX<160+250 && mouseY>640-10 && mouseY<640+10 && mapa == true && agua == true) {
    estado = 4;
    contadorClicks = 0;//reseteo
  }  
  //boton regreso menu
  else if (mouseX>160-60 && mouseX<160+400 && mouseY>690-10 && mouseY<690+10 && mapa == true && agua == true) {
    estado = 2;
    contadorClicks = 0;//reseteo
  }  

  //escena
  if (dist(500, 350, mouseX, mouseY) <60) {
    agua = true;
    println("click agua");
  } else if (dist(850, 500, mouseX, mouseY) <60) {
    mapa = true;
    println("click mapa");
  }
}
