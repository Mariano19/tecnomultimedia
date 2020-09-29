//Declaracion de la clase
class arbol {
  //variables
  int c, tam, tam2;
  //constructor
  arbol(int c_, int tam_, int tam2_) {

    c=c_;
    tam=tam_;
    tam2=tam2_;
  }


  void dibujar() {
    for (int i = 0; i < c; i++) {
      arbol.resize( int(random(tam, tam2)), int(random(tam, tam2)));
      image(arbol, mouseX+random(-200, 100), mouseY+random(-50, 20));
    }
  }
}

class fondo {
  color c= color(200, 100, 100);

  void c() {
    colorMode(RGB);
    c=color(random(100), 300, 100);
  }

  void dibujar() {
    background(c);
  }
}
