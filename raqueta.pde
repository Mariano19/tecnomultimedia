class Raqueta {
  float tam;
  PImage imagen;
  
  Raqueta(float tam_){
    
    tam = tam_;
    imagen= loadImage("raqueta.png");
    imagen.resize(int(tam), int(tam));
  }
    
  void dibujo(){
    image(imagen, mouseX, mouseY);
  }    
}
