//Pestaña con el contenido de Pantalla 9:Estacionamiento

void mostrarPantalla9() {

  //fondo
  cursor(ARROW); 
  image (imagen9, 0, 0);
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
    text("En el estacionamiento quedaron algunos autos abandonados. Luego de buscar encuentro \nuno con los vidrios rotos pero las llaves puestas", 100, height/1.3);
  } else if (contadorClicks == 1) {
    text("No parece estar en buen estado pero sorprendentemente despues de varios intentos \narranca aunque con poco combustible...", 100, height/1.3);
  } else if (contadorClicks >= 2 && bidon == false) {
    text("Busca en la escena mas combustible", 100, height/1.3);
  } else if (contadorClicks >= 2 && bidon == true) {
    text("Ya con todo preparado empiezo a conducir por la autopista...", 100, height/1.3);
  }
  //escena
  if (dist(800, 420, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(800, 420, 60, 60);
  } else if (dist(400, 400, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(400, 400, 60, 60);
  } else if (dist(650, 350, mouseX, mouseY) <60) {
    cursor(HAND);
    fill(200, 200, 200, 40);
    ellipse(650, 350, 60, 60);
  }

  if (dist(800, 420, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("Encontre un bidon con combustible", mouseX-100, mouseY);
  } else if (dist(400, 400, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("El auto esta destruido", mouseX, mouseY);
  } else if (dist(650, 350, mouseX, mouseY) <60 && mousePressed) {
    fill(230);
    text("No arranca", mouseX, mouseY);
  }
}


void clickPantalla9() {
  println( "click en pantalla 9:estacionamiento");

  //contador
  if (mouseButton == LEFT && mouseX>width - 80 && mouseX<width-40 && mouseY>650-40 && mouseY<650+40) {
    contadorClicks++;
  } else if (mouseButton == LEFT && mouseX>40 && mouseX<60 && mouseY>650-40 && mouseY<650+40 ) {
    contadorClicks--;
  } 
  //limite contador
  if (contadorClicks == -1) {
    contadorClicks =0;
  } else if (contadorClicks == 5) {
    contadorClicks =4;
  } 
  //pase a pantalla11
  if (contadorClicks >= 4 && bidon == true) {
    estado = 11;
    contadorClicks = 0; //reseteo
  }  

  //escena
  if (dist(800, 420, mouseX, mouseY) <60) {
    bidon = true;
    println("click bidon");
  }
}
