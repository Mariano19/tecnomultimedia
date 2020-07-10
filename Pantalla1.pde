//Pestaña con el contenido de Pantalla 1:Historia
void mostrarPantalla1() {

  //fondo
  cursor(ARROW); 
  image (imagen1, 0, 0);
  rectMode(CENTER);
  noStroke();
  fill(100, 100, 100, 90);
  rect(width/2, height/1.18, width-50, height/4, 50);

  //botones laterales
  fill(255);
  if ( mouseX>40 && mouseX<60 && mouseY>650-40 && mouseY<650+40 ) {
    fill(200, 0, 0);
    cursor(HAND);
  }
  triangle(40, 650, 40+20, 650-40, 40+20, 650+40);

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
    textFont(fuenteCredito);
    textAlign(LEFT);
    textSize(30);
    text("                                                              CONTROLES \n                            Presta atencion a las escenas y busca \n                            objetos y pistas que te ayudaran \n                            a tomar las desiciones correctas", 100, height/1.3);
    //controles.resize(250, 0);
    image(controles, 100, 590);
  } else if (contadorClicks == 1) {
    text("Nuestra historia comienza...", 100, height/1.3);
  } else if (contadorClicks == 2) {     
    text("En un mundo post apocaliptico una pandemia mortal casi extermina a toda la poblacion. \nNos encontramos en nuestro departamento antes de la infeccion y mientras mucha \ngente decidio huir,  preferimos quedarnos en la ciudad permaneciendo aislados en la \nseguridad de nuestro hogar...", 100, height/1.3);
  } else if (contadorClicks == 3) {
    text("Logramos sobrevivir varios meses racionando los alimentos y el agua que nos quedaban. \nPero el tiempo paso y ahora nos vemos obligados a salir al exterior con el objetivo de \nbuscar suministros o intentar escapar a un lugar mas seguro... \n\n                                                                                                        Elige tu camino...", 100, height/1.3);
  }
}


void clickPantalla1() {
  println( "click en pantalla 1:historia");

  //contador
  if (mouseButton == LEFT && mouseX>width - 80 && mouseX<width-40 && mouseY>650-40 && mouseY<650+40) {
    contadorClicks++;
  } else if (mouseButton == LEFT && mouseX>40 && mouseX<60 && mouseY>650-40 && mouseY<650+40 ) {
    contadorClicks--;
  } 
  //limite contador
  if (contadorClicks == -1) {
    contadorClicks =0;
  } 
  //pase a pantalla2
  if (contadorClicks == 4) {
    estado = 2;
    contadorClicks = 0; //reseteo
  }
}
