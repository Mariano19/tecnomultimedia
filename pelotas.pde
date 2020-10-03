class Pelotas {
  //propiedades,posicion,velocidad y tamanio
  float x, y, velo, tam;
  PImage imagen;

  //constructor
  Pelotas(float velo_, float x_, float tam_) {
    //valores iniciales    
    y=100;
    //reemplazo
    x=x_;
    tam= tam_;    
    velo = velo_;
    //imagen
    imagen= loadImage("imagen.png");
    imagen.resize(int(tam), int(tam));
  }

  void dibujo() {
    image(imagen, x, y);
  }

  void movimiento() {    
    y= y+velo;
  }

  void rebotes() {      
    println(x);
    if (y+tam > height) {
      //y=tam;
      velo = -velo;
    } else if (y < mouseY && x < mouseX && x+tam > mouseX) {
      y= mouseY + velo;
      velo= -velo;
    }
    if (y < 0) {
      velo= -velo;
    }
  }
}
