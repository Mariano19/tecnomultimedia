
class AventuraGrafica {
  //clases
  Pantalla pantalla;
  Texto texto;
  Minijuego minijuego;
  Sonido sonido;


  //Variables globales  
  int contadorClicks, estado = 0;
  PFont fuenteTitulo, fuenteTexto, fuenteCredito;
  boolean mapa, agua, arma, bidon;


  //CONSTRUCTOR
  AventuraGrafica() {
    colorMode(RGB);
    cursor (ARROW);
    rectMode(CENTER);
    textAlign(LEFT);
    estado = 0;
    texto = new Texto();
    pantalla = new Pantalla();
    minijuego = new Minijuego();
    sonido = new Sonido();
  }
  
  void musica(){
    sonido.musica();
  }
  
    void playInteraccion(){
    sonido.playInteraccion();
  }
  
  void sonidoDisparo(){
    sonido.tiro();
  }

  void actualizar() {    
    pantalla.dibujar();
    texto.dibujar();
  }

  void clickPantalla() {
    pantalla.clickPantalla();
    playInteraccion();
  }
  


  //FUNCIONES GLOBALES  

  boolean clickRectangulo (float x, float y, int ancho, int alto) {
    if ( mouseX>x-ancho/2 && mouseX<x+ancho/2 && mouseY>y-alto/2-10 && mouseY<y+alto/2-10 ) {
      return true;
    } else {
      return false;
    }
  }

  //Contador y limites en botones laterales ++ y --
  void contador(int limite) {
    if (clickRectangulo(width - 50, height -118, 40, 80) && mouseButton == LEFT ) {
      contadorClicks++;
    } else if (clickRectangulo(width /25, height -118, 40, 80) && mouseButton == LEFT ) {
      contadorClicks--;
    }
    if (contadorClicks == -1) {
      contadorClicks =0;
    } else if (contadorClicks == limite) {
      contadorClicks =limite-1;
    }
  }

  //cambia de color blanco a rojo cuando pasas el mouse y suma 1 al contador con mousepressed
  void cambioColor(float x, float y, int ancho, int alto) {   
    fill(255);  
    if ( clickRectangulo(x, y, ancho, alto)) {
      fill(200, 0, 0);
      cursor(HAND);
    } else {
      cursor(ARROW);
    }
  }

  //Resetea todas las variables
  void reset() {
    texto.vDialogo = 0;
    texto.vTexto = 0;
    pantalla.v = 0;
    pantalla.posY = 0;
    contadorClicks = 0;
    minijuego.reset();
  }


  boolean estadoIgual(int aux) {
    if (estado==aux) {
      return true;
    } else {
      return false;
    }
  }
}
