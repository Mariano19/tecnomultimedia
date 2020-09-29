arbol arboles;
fondo fondo;
PImage arbol;



void setup() {
  rectMode(CENTER);
  //background(0,100,0);
  size(1200, 500);
  arboles = new arbol (5,75,150);
  fondo = new fondo ();
  arbol = loadImage("arbol.png");
  
}



void draw(){
  //
}

void mousePressed() {

  fondo.c();
  fondo.dibujar();
  arboles.dibujar();
}
