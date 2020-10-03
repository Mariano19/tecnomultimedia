int c = 25;
Pelotas [] pelota = new Pelotas[c];
Raqueta raqueta;

void setup() {
  size(1000, 600);
  raqueta = new Raqueta(100);
  for (int i = 0; i<c; i++) {
    pelota[i] = new Pelotas(random(4, 10), random(0, width), random(60, 90));
  }
}

void draw() {
  
  background(200);
  for ( int i = 0; i < c; i++ ) {
    pelota[i].movimiento();//(random(1, 4), random(1, 4));
    pelota[i].dibujo();
    pelota[i].rebotes();
    //pelota[i].limites(pelota);
  }
  
  raqueta.dibujo();
  
}
