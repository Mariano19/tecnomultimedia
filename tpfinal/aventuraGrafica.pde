
class AventuraGrafica {
  //clases
  Pantalla pantalla;
  Texto texto;


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
  }

  void actualizar() {    
    pantalla.dibujar();
    texto.dibujar();
  }

  void clickpantalla() {
    println ("contador" + contadorClicks, mouseX, mouseY, "MAPA", mapa, "ARMA", arma, "AGUA", agua, "NAFTA", bidon);
    //-----------------------------------------------------
    //Pantalla 0
    if (estado==0) {
      sonido.play();
      //boton "EMPEZAR"
      if ( clickRectangulo (width/6, height-200, 200, 40 )) {
        estado = 1;
        reset();
      }
      //boton "CREDITOS"
      else if ( clickRectangulo (width/6, height-100, 200, 40 )) {
        estado = 99;
        reset();
      }
    }
    //-----------------------------------------------------
    //Pantalla 1
    if (estado==1) {
      sonido.pause();
      contador(5); 
      //pase a pantalla2
      if (contadorClicks == 4) {
        estado = 2;
        reset();
      }
    }
    //-----------------------------------------------------
    //Pantalla 2
    if (estado==2) {      
      contador(3);
      //botones
      if (clickRectangulo(width/2.6, height/1.3, 600, 30) && mapa == true && agua == true ) {
        estado = 3;
        reset();
      } else if (clickRectangulo(width/3.75, height/1.3+50, 400, 30) && mapa == true && agua == true) {
        estado = 4;
        reset();
      } else if (clickRectangulo(width/2.95, height/1.3+100, 600, 30) && mapa == true && agua == true) {
        estado = 2;
        reset();
      }  
      //escena
      if (clickRectangulo(width/2, height/2.2, 50, 50)) {
        agua = true;
      } else if (clickRectangulo(width/1.2, height/1.5, 50, 50)) {
        mapa = true;
      }
    }

    //-----------------------------------------------------
    //Pantalla 3
    if (estado==3) {      
      contador(3);
      //botones 
      if (contadorClicks >= 2 && clickRectangulo(width/3.3, height/1.3, 400, 30)) {
        estado = 5;
        reset();
      } else if (contadorClicks >= 2 && clickRectangulo(width/4.7, height/1.3+50, 200, 30)) {
        estado = 6;
        reset();
      }
    }

    //-----------------------------------------------------
    //Pantalla 4
    if (estado==4) {    
      contador(3);
      //botones 
      if (contadorClicks >= 1 && clickRectangulo(width/3, height/1.3, 600, 30)) {
        estado = 7;
        reset();
      } else if (contadorClicks >= 1 && clickRectangulo(width/3.1, height/1.3+50, 600, 30)) {
        estado = 8;
        reset();
      } else if (contadorClicks >= 1 && clickRectangulo(width/3, height/1.3+100, 600, 30)) {
        estado = 9;
        reset();
      }
    }

    //-----------------------------------------------------
    //Pantalla 5
    if (estado==5) {
      contador(3);
      //botones
      if (clickRectangulo(width/3.3, height/1.3, 500, 30) && arma == true) {
        estado = 12;
        reset();
      } else if (clickRectangulo(width/2.6, height/1.3+50, 700, 30) && arma == true) {
        estado = 13;
        reset();
      }  
      //escena
      if (clickRectangulo(width/1.1, height/1.7, 50, 50)) {
        arma = true;
        println("click arma");
      }
    }

    //-----------------------------------------------------
    //Pantalla 6
    if (estado==6) {
      contador(3);
      //botones
      if (contadorClicks >= 1 && clickRectangulo(width/2.8, height/1.3, 600, 30)) {
        estado = 10;
        reset();
      } else if (contadorClicks >= 1 && clickRectangulo(width/3.35, height/1.3+50, 600, 30)) {
        estado = 5;
        reset();
      }
    }
    //-----------------------------------------------------
    //Pantalla 7
    if (estado==7) {
      contador(3);
      //botones
      if (contadorClicks >= 1 && clickRectangulo(width/3, height/1.3, 600, 30)) {
        estado = 13;
        reset();
      } else if (contadorClicks >= 1 && clickRectangulo(width/3.6, height/1.3+50, 600, 30)) {
        estado = 15;
        reset();
      }
    }
    //-----------------------------------------------------
    //Pantalla 8
    if (estado==8) {
      contador(3);
      //boton estacionamiento
      if (contadorClicks >= 1 && clickRectangulo(width/3, height/1.3, 600, 30)) {
        estado = 9;
        reset();
      } else if (contadorClicks >= 1 && clickRectangulo(width/2.7, height/1.3+50, 600, 30)) {
        estado = 7;
        reset();
      }
    }
    //-----------------------------------------------------
    //Pantalla 9
    if (estado==9) {
      contador(5);
      //pase a pantalla11
      if (contadorClicks >= 4 && bidon == true && clickRectangulo (width - 50, height -118, 40, 80)) {
        estado = 11;
        reset();
      }
      //escena
      if (clickRectangulo(width/1.2, height/1.7, 50, 50)) {
        bidon = true;
        println("click bidon");
      }
    }

    //-----------------------------------------------------
    //Pantalla 10
    if (estado==10) {
      contador(4);
      //pase a pantalla12
      if (contadorClicks >= 2 && arma == true) {
        estado = 12;
        reset();
      }  
      //escena
      if (clickRectangulo(width/1.1, height/1.7, 50, 50)) {
        arma = true;
        println("click arma");
      }
    }

    //-----------------------------------------------------
    //Pantalla 11
    if (estado==11) {
      contador(3);
      //botones sigo buscando
      if (contadorClicks >= 1 && clickRectangulo(width/2.25, height/1.3, 600, 30)) {
        estado = 13;
        reset();
      } else if (contadorClicks >= 1 && clickRectangulo(width/2.6, height/1.3+50, 600, 30)) {
        estado = 15;
        reset();
      }
    }

    //-----------------------------------------------------
    //Pantalla 12
    if (estado==12) {
      contador(4);
      //botones
      if (contadorClicks >= 1 && clickRectangulo(width/2.9, height/1.3, 600, 30)) {
        estado = 13;
        reset();
      } else if (contadorClicks >= 1 && clickRectangulo(width/4.7, height/1.3+50, 600, 30)) {
        estado = 14;
        reset();
      } else if (contadorClicks >= 1 && clickRectangulo(width/2.65, height/1.3+100, 600, 30)) {
        estado = 13;
        reset();
      }
    }

    //----------------------------------------------------
    //Pantalla 13 //FINALES DE GANASTE
    if (estado==13) {
      contador(2);
      //boton "CREDITOS"
      if (contadorClicks >= 1 && clickRectangulo(width/2, height/1.2, 400, 30)) {
        estado = 99;
        reset();
        mapa = false;
        arma = false;
        agua = false;
        bidon = false;
      }
    }

    //-----------------------------------------------------
    //Pantalla 14 //PERDISTE
    if (estado==14) {
      contador(2);
      //boton "VOLVER AL INICIO"
      if (contadorClicks >= 1 && clickRectangulo(width/2, height/1.2, 400, 30)) {
        reset();
        estado = 0;
        mapa = false;
        arma = false;
        agua = false;
        bidon = false;
      }
    }

    //-----------------------------------------------------
    //Pantalla 15//creditos
    if (aventura.estado==99) {
      //sonido.pause();
      if (clickRectangulo(width/2, height/1.2, 400, 30)) {
        reset();
        estado = 0;
      }
    }
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
  }
}
