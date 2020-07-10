//pestaña con el contenido de Pantalla 0:Menu
void mostrarPantalla0() {    

  //fondo
  rectMode(CENTER);
  tint(vDialogo-100, vDialogo-100, vDialogo);
  if (posY> 0 && posY<80) {
    image(cielo, 0, 80-posY);
  } else {
    image(cielo, 0, 0);
  }
  image (imagen0, 0, 0);

  noStroke();
  float i = random(0, 20);
  if (i > 18 && frameCount >100) {
    fill(150, 100, 0);
    rect(405, 444, 10, 38, 2);
  }
  noTint();
  //texto  
  textAlign(CENTER);
  textFont(fuenteTitulo);
  textSize(24);

  //cambio de color texto  
  fill(255);  
  if ( mouseX>170-60 && mouseX<170+60 && mouseY>540-15 && mouseY<540+15 ) {
    fill(200, 0, 0);
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
  text("empezar", width/6, height/1.4);


  fill(255);
  if ( mouseX>170-60 && mouseX<170+60 && mouseY>630-15 && mouseY<630+15 ) {
    fill(200, 0, 0);
    cursor(HAND);
  }
  text("creditos", width/6, height/1.2);

  //Actualizo Valores
  posY +=0.8;
  vDialogo += 2;
}

void clickPantalla0() {
  println( "click en pantalla 0");
  //boton "EMPEZAR"
  if ( mouseX>170-60 && mouseX<170+60 && mouseY>540-15 && mouseY<540+15 ) {
    estado = 1;
    vDialogo = 0;
    posY = 0;
  }
  //boton "CREDITOS"
  else if ( mouseX>170-60 && mouseX<170+60 && mouseY>630-15 && mouseY<630+15 ) {
    estado = 99;
    vDialogo = 0;
    posY = 0;
  }
}
