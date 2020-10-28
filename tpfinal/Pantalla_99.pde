//pestaña con el contenido de Pantalla 99:Creditos
void mostrarPantalla99() {
  //fondo
  fondoPantalla(19); 
  
  //dialogo1
  imagen[3].resize(200, 0);
  tint(255, vDialogo-100);  
  image (imagen[3], 0+120, 0+100);
  noTint();  
  //dialogo2
  imagen[4].resize(60, 0);
  tint(255, vDialogo-400);  
  image (imagen[4], 0+200, 0+250);
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
    text("Com. 2", 230, 270);
  }
  
  if (vDialogo > 1000) {
    fill(0, 0, 0, vTexto-700);
    textSize(21);
    text("Tecnologia \n Multimedial I", 220, 160);
  }
  
  if (vDialogo > 1200 ) {
    fill(0, 0, 0, vTexto-800);
    textSize(18);
    text("UNLP", 230, 270);
  }
  botonesTexto(width/2, height/1.2, 24, fuenteTitulo, "    volver al inicio    ");
    
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
  if (clickRectangulo(width/2, height/1.2, 400, 30)) {
    reset();
    estado = 0;
    mapa = false;
    arma = false;
    agua = false;
    bidon = false;
  }
}
