
class Enemigo {


  // CAMPOS //(variables) #propiedes  
  boolean vivo;
  int c;
  float x, y, vel;
  PImage[] img = new PImage[5];
  

  // CONSTRUCTOR // metodo/funcion inicial (el "setup" del objeto)  
  Enemigo(float x_, float y_, float vel_) {
    c = 0; //contador
    x = x_;
    y =  y_;
    vel = vel_;
    vivo = true;
    //imagen
    for ( int i = 0; i < 5; i++ ) {
      img [i] = loadImage( i + ".png" ); 
      img [i].resize(100, 100);
    }
  }


  // METODOS (funciones) #acciones
  void actualizar() {
    mover();
    dibujar();
  }

  
  // --Mostrar los sprites de los enemigos 
  void dibujar() { 
    if (vivo) image( img[c], x, y );
  }
  
  
  // --Mueve a los enemigos aleatoriamente en el eje x
  void mover() {
    //println(vel,x,c);
    if (vivo) {
      x = x + vel;
      if (frameCount%4 == 0) c++;
      if ( x > width ) x = -100;
      if ( c == 5 ) c = 0; //reset contador
    }
  }

  void morir() {
    vivo = false;
  }
  
}
