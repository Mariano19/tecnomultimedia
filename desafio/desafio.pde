PImage arbol;



void setup() {
  rectMode(CENTER);
  background(0,100,0);
  size(1200, 500);
  arbol = loadImage("arbol.png");
  surface.setResizable(true);
}

void arboles(int c, int tam, int tam2) {
  for (int i = 0; i < c; i++) {
    arbol.resize( int(random(tam,tam2)),int(random(tam,tam2)));
    image(arbol, mouseX+random(-200, 100), mouseY+random(-50, 20));
  }
}
void draw(){
}

void mousePressed() {

  arboles(5, 75, 150);
}
