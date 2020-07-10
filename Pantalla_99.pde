//pestaña con el contenido de Pantalla 99:Creditos

void mostrarPantalla99() {


  //fondo
  image (imagen99, 0, 0);
  
  //dialogo1
  imagenDialogo.resize(200, 0);
  tint(255, vDialogo-100);  
  image (imagenDialogo, 0+120, 0+100);
  noTint();
  
  //dialogo2
  imagenDialogo2.resize(60, 0);
  tint(255, vDialogo-400);  
  image (imagenDialogo2, 0+200, 0+250);
  noTint();

  //texto creditos
  textFont(fuenteCredito);
  textAlign(CENTER);  
  if (vDialogo > 100 && vDialogo <900) {
    fill(0, 0, 0, vTexto-150);
    textSize(21);
    text("Autor:   Mariano Quattrocchi \n Prof:   Matias Jauregui ", 220, 160);
  }

  if (vDialogo > 300 && vDialogo <1000) {
    fill(0, 0, 0, vTexto-300);
    textSize(18);
    text("Com. 2", 230, 275);
  }
  
  if (vDialogo > 1000) {
    fill(0, 0, 0, vTexto-700);
    textSize(21);
    text("Tecnologia \n Multimedial I", 220, 160);
  }
  
  if (vDialogo > 1200 ) {
    fill(0, 0, 0, vTexto-800);
    textSize(18);
    text("UNLP", 230, 275);
  }

  //texto boton
  fuenteTitulo = loadFont("PlaneCrash-48.vlw");
  textFont(fuenteTitulo);
  textSize(24);

  //cambio de color texto

  fill(255);
  if ( mouseX>512-130 && mouseX<512+130 && mouseY>630-15 && mouseY<630+15 ) {
    fill(200, 0, 0);
    cursor(HAND);
  } else {
    cursor(ARROW);
  }
  text("volver al inicio", width/2, height/1.2);


  //Actualizo variables
  vDialogo += 3;
  vTexto += 2;
  println( vDialogo);
  
  //Loop
  if (vDialogo > 2000 ) {
    vDialogo = 0;
    vTexto = 0;
  }
}

void clickPantalla99() {
  println( "click en pantalla 99:creditos");
  //boton "VOLVER AL INICIO"
  if ( mouseX>512-130 && mouseX<512+130 && mouseY>630-15 && mouseY<630+15 ) {
    estado = 0;
    //reseteo
    vDialogo = 0;
    vTexto = 0;
    arma = false;
    mapa = false;
    agua = false;
    bidon = false;
  }
}
