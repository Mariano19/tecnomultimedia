class Pantalla {
  //variables
  int c = 20 ; 
  float posY;
  int v = 0;
  PImage[] imagen = new PImage[c];
 
  //CONSTRUCTOR
  Pantalla() {
    

    //cargo imagenes
    for (int i = 0; i < c; i++) {    
      imagen[i] = loadImage("imagen-" + i + ".png");
      imagen[i].resize(width,height);
      
    }
  }

  /*
  // METODOS (funciones)
   void actualizar(int i) {    
   fondo(i);
   panelConBotones();
   }
   */
  void dibujar() {
    //-----------------------------------------------------
    //Pantalla 0
    if (aventura.estadoIgual(0)) {
      pushStyle();
      //fondo
      tint(v-100, v-100, v);
      if (posY> 0 && posY<80) {
        image(imagen[1], width/2,height/2 + 80-posY);
      } else {
        image(imagen[1], width/2,height/2);
      }
      //imagen[1].resize(width, height);
      fondo(0);  
      //efecto luz ventana
      noStroke();
      float i = random(0, 20);
      if (i > 18 && frameCount >100) {
        fill(150, 100, 0);
        rect(405, 444, 10, 38, 2);
      }
      noTint();        
      //sonido.loop();
      //Actualizo Valores
      posY +=0.8;
      v += 2;
      popStyle();
    }
    //-----------------------------------------------------
    //Pantalla 1
    if (aventura.estadoIgual(1)) {
      fondo(5);
      panelConBotones();
    }

    //-----------------------------------------------------
    //Pantalla 2
    if (aventura.estadoIgual(2)) {
      fondo(6);
      panelConBotones();
      detallesEscena(width/3, height/3, 50, 50, "Me queda poca comida");
      detallesEscena(width/2, height/2.2, 50, 50, "Llevo una botella de agua");
      detallesEscena(width/1.2, height/1.5, 50, 50, "Llevo el mapa");
    }

    //-----------------------------------------------------
    //Pantalla 3
    if (aventura.estadoIgual(3)) {
      fondo(7);
      panelConBotones();
      detallesEscena(width/8, height/1.8, 50, 50, "Es un auto abandonado");
      detallesEscena(width/1.5, height/1.9, 50, 50, "La basura se acumula");
    }

    //-----------------------------------------------------
    //Pantalla 4
    if (aventura.estadoIgual(4)) {
      fondo(8);
      panelConBotones();
    }

    //-----------------------------------------------------
    //Pantalla 5
    if (aventura.estadoIgual(5)) {
      fondo(9);
      panelConBotones();
      detallesEscena(width/7, height/1.8, 50, 50, "La comida fresca esta podrida");
      detallesEscena(width/1.5, height/1.9, 50, 50, "Hay marcas de sangre");
      detallesEscena(width/1.1, height/1.7, 50, 50, "Encuentro un arma");
      detallesEscena(width/3, height/3, 50, 50, "Encuentro unas latas de comida");
    }

    //-----------------------------------------------------
    //Pantalla 6
    if (aventura.estadoIgual(6)) {
      fondo(10);
      panelConBotones();
      detallesEscena(width/3, height/1.7, 50, 50, "Un perrito");
    }
    //-----------------------------------------------------
    //Pantalla 7
    if (aventura.estadoIgual(7)) {
      fondo(11);
      panelConBotones();
      detallesEscena(width/7, height/1.8, 50, 50, "El cartel no parece muy confiable");
      detallesEscena(width/1.4, height/1.7, 50, 50, "El camino se divide");
    }
    //-----------------------------------------------------
    //Pantalla 8
    if (aventura.estadoIgual(8)) {
      fondo(12);
      panelConBotones();
      detallesEscena(width/3, height/1.8, 50, 50, "La estacion esta destruida");
    }
    //-----------------------------------------------------
    //Pantalla 9
    if (aventura.estadoIgual(9)) {
      fondo(13);
      panelConBotones();
      detallesEscena(width/3, height/1.9, 50, 50, "El auto esta destruido");
      detallesEscena(width/1.6, height/2, 50, 50, "No arranca");
      detallesEscena(width/1.2, height/1.7, 50, 50, "Encontre un bidon con combustible");
    }

    //-----------------------------------------------------
    //Pantalla 10
    if (aventura.estadoIgual(10)) {
      fondo(9);
      panelConBotones();
      detallesEscena(width/7, height/1.8, 50, 50, "La comida fresca esta podrida");
      detallesEscena(width/1.5, height/1.9, 50, 50, "Hay marcas de sangre");
      detallesEscena(width/1.1, height/1.7, 50, 50, "Encuentro un arma");
      detallesEscena(width/3, height/3, 50, 50, "Encuentro unas latas de comida");
    }

    //-----------------------------------------------------
    //Pantalla 11
    if (aventura.estadoIgual(11)) {
      fondo(14);
      panelConBotones();
      detallesEscena(width/1.2, height/2.7, 50, 50, "Centro de refugiados a 80km");
      detallesEscena(width/3, height/1.7, 50, 50, "Mucha gente quedo atrapada intentando huir");
    }

    //-----------------------------------------------------
    //Pantalla 12
    if (aventura.estadoIgual(12)) {
      //aventura.minijuego.estados();
      
      fondo(15);
      panelConBotones();
      detallesEscena(width/2, height/2.4, 50, 50, "No creo que pueda escapar");
      
    }
        
    //----------------------------------------------------
    //Pantalla 13 //FINALES DE GANASTE
    if (aventura.estadoIgual(13)) {
      if ( aventura.bidon == true) {
        fondo(16);
      } 
      if (  aventura.contadorClicks == 0 && aventura.bidon == true) {
        panelConBotones();
      } 
      if ( aventura.bidon == false) {
        fondo(17);
      } 
      if (aventura.contadorClicks == 0 && aventura.bidon == false) {
        panelConBotones();
      }
    }

    //-----------------------------------------------------
    //Pantalla 14 //PERDISTE
    if (aventura.estadoIgual(14)) {
      fondo(18);
      if (aventura.contadorClicks == 0) {
        panelConBotones();
      }
    }

    //-----------------------------------------------------
    //Pantalla 15//creditos
    if (aventura.estadoIgual(99)) {
      fondo(19);
      //dialogo1
      imagen[3].resize(225, 0);
      tint(255, v-100);  
      image (imagen[3], 0+220, 0+175);
      noTint();  
      //dialogo2
      imagen[4].resize(60, 0);
      tint(255, v-400);  
      image (imagen[4], 0+230, 0+265);
      noTint();

      //Actualizo variables
      v += 3;      
      println( v);

      //Loop
      if (v > 2000 ) {
        v = 0;
      }
    }
    
    //-----------------------------------------------------
    //Pantalla MINIJUEGO
    if (aventura.estadoIgual(15)) {
      aventura.minijuego.estados();
    }
  }



  //FUNCIONES 
  // --crear fondo
  void fondo(int i) { 
    pushStyle();
    rectMode(CENTER);
    image (imagen[i], width/2,height/2);
    //imagen[i].resize(width, height);
    popStyle();
  }

  //crea el panel de abajo con las flechas
  void panelConBotones () {
    pushStyle();
    noStroke();
    fill(100, 100, 100, 90);
    rect(width/2, height-118, width-50, 192, 50);

    aventura.cambioColor(width/25, height -118, 40, 80);
    triangle(40, height -118, 40+20, height - 158, 40+20, height-78); 

    aventura.cambioColor (width - 50, height -118, 40, 80);  
    triangle(width - 40, height -118, width - 60, height - 158, width - 60, height-78);

    popStyle();
  }


  //crea elipses y texto cuando hacemos click
  void detallesEscena (float x, float y, int ancho, int alto, String texto) {
    pushStyle();
    if (aventura.clickRectangulo (x, y, ancho, alto)) {
      cursor(HAND);
      fill(200, 200, 200, 40);
      noStroke();
      ellipse(x, y, ancho, alto);
    }
    if (aventura.clickRectangulo (x, y, ancho, alto) && mousePressed) {
      fill(230);
      text(texto, mouseX - texto.length()*5, mouseY);
    }
    popStyle();
  }

  void clickPantalla() {
    println ("contador" + aventura.contadorClicks, mouseX, mouseY, "MAPA", aventura.mapa, "ARMA", aventura.arma, "AGUA", aventura.agua, "NAFTA", aventura.bidon);
    //-----------------------------------------------------
    //Pantalla 0
    if (aventura.estadoIgual(0)) {
      //sonido.play();
      //boton "EMPEZAR"
      if (aventura.clickRectangulo (width/6, height-200, 200, 40 )) {
        aventura.estado = 1;
        aventura.reset();
      }
      //boton "CREDITOS"
      else if ( aventura.clickRectangulo (width/6, height-100, 200, 40 )) {
        aventura.estado = 99;
        aventura.reset();
      }
    }
    //-----------------------------------------------------
    //Pantalla 1
    if (aventura.estadoIgual(1)) {
      //sonido.pause();
      aventura.contador(5); 
      //pase a pantalla2
      if (aventura.contadorClicks == 4) {
        aventura.estado = 2;
        aventura.reset();
      }
    }
    //-----------------------------------------------------
    //Pantalla 2
    if (aventura.estadoIgual(2)) {      
      aventura.contador(3);
      //botones
      if (aventura.clickRectangulo(width/2.6, height/1.3, 600, 30) && aventura.mapa == true && aventura.agua == true ) {
        aventura.estado = 3;
        aventura.reset();
      } else if (aventura.clickRectangulo(width/3.75, height/1.3+50, 400, 30) && aventura.mapa == true && aventura.agua == true) {
        aventura.estado = 4;
        aventura.reset();
      } else if (aventura.clickRectangulo(width/2.95, height/1.3+100, 600, 30) && aventura.mapa == true && aventura.agua == true) {
        aventura.estado = 2;
        aventura.reset();
      }  
      //escena
      if (aventura.clickRectangulo(width/2, height/2.2, 50, 50)) {
        aventura.agua = true;
      } else if (aventura.clickRectangulo(width/1.2, height/1.5, 50, 50)) {
        aventura.mapa = true;
      }
    }

    //-----------------------------------------------------
    //Pantalla 3
    if (aventura.estadoIgual(3)) {      
      aventura.contador(3);
      //botones 
      if (aventura.contadorClicks >= 2 && aventura.clickRectangulo(width/3.3, height/1.3, 400, 30)) {
        aventura.estado = 5;
        aventura.reset();
      } else if (aventura.contadorClicks >= 2 && aventura.clickRectangulo(width/4.7, height/1.3+50, 200, 30)) {
        aventura.estado = 6;
        aventura.reset();
      }
    }

    //-----------------------------------------------------
    //Pantalla 4
    if (aventura.estadoIgual(4)) {    
      aventura.contador(3);
      //botones 
      if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/3, height/1.3, 600, 30)) {
        aventura.estado = 7;
        aventura.reset();
      } else if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/3.1, height/1.3+50, 600, 30)) {
        aventura.estado = 8;
        aventura.reset();
      } else if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/3, height/1.3+100, 600, 30)) {
        aventura.estado = 9;
        aventura.reset();
      }
    }

    //-----------------------------------------------------
    //Pantalla 5
    if (aventura.estadoIgual(5)) {
      aventura.contador(3);
      //botones
      if (aventura.clickRectangulo(width/3.3, height/1.3, 500, 30) && aventura.arma == true) {
        aventura.estado = 12;
        aventura.reset();
      } else if (aventura.clickRectangulo(width/2.6, height/1.3+50, 700, 30) && aventura.arma == true) {
        aventura.estado = 13;
        aventura.reset();
      }  
      //escena
      if (aventura.clickRectangulo(width/1.1, height/1.7, 50, 50)) {
        aventura.arma = true;
        println("click arma");
      }
    }

    //-----------------------------------------------------
    //Pantalla 6
    if (aventura.estadoIgual(6)) {
      aventura.contador(3);
      //botones
      if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/2.8, height/1.3, 600, 30)) {
        aventura.estado = 10;
        aventura.reset();
      } else if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/3.35, height/1.3+50, 600, 30)) {
        aventura.estado = 5;
        aventura.reset();
      }
    }
    //-----------------------------------------------------
    //Pantalla 7
    if (aventura.estadoIgual(7)) {
      aventura.contador(3);
      //botones
      if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/3, height/1.3, 600, 30)) {
        aventura.estado = 13;
        aventura.reset();
      } else if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/3.6, height/1.3+50, 600, 30)) {
        aventura.estado = 14;
        aventura.reset();
      }
    }
    //-----------------------------------------------------
    //Pantalla 8
    if (aventura.estadoIgual(8)) {
      aventura.contador(3);
      //boton estacionamiento
      if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/3, height/1.3, 600, 30)) {
        aventura.estado = 9;
        aventura.reset();
      } else if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/2.7, height/1.3+50, 600, 30)) {
        aventura.estado = 7;
        aventura.reset();
      }
    }
    //-----------------------------------------------------
    //Pantalla 9
    if (aventura.estadoIgual(9)) {
      aventura.contador(5);
      //pase a pantalla11
      if (aventura.contadorClicks >= 4 && aventura.bidon == true && aventura.clickRectangulo (width - 50, height -118, 40, 80)) {
        aventura.estado = 11;
        aventura.reset();
      }
      //escena
      if (aventura.clickRectangulo(width/1.2, height/1.7, 50, 50)) {
        aventura.bidon = true;
        println("click bidon");
      }
    }

    //-----------------------------------------------------
    //Pantalla 10
    if (aventura.estadoIgual(10)) {
      aventura.contador(4);
      //pase a pantalla12
      if (aventura.contadorClicks >= 2 && aventura.arma == true) {
        aventura.estado = 12;
        aventura.reset();
      }  
      //escena
      if (aventura.clickRectangulo(width/1.1, height/1.7, 50, 50)) {
        aventura.arma = true;
        println("click arma");
      }
    }

    //-----------------------------------------------------
    //Pantalla 11
    if (aventura.estadoIgual(11)) {
      aventura.contador(3);
      //botones sigo buscando
      if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/2.25, height/1.3, 600, 30)) {
        aventura.estado = 13;
        aventura.reset();
      } else if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/2.6, height/1.3+50, 600, 30)) {
        aventura.estado = 14;
        aventura.reset();
      }
    }
        
    //-----------------------------------------------------
    //Pantalla 12 NUEVA
    if (aventura.estadoIgual(12)) {      
      aventura.contador(4);
      //botones      
      if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/2.65, height/1.3, 600, 30)) {
        aventura.estado = 15;
        aventura. reset();
      }      
    }
    /*
    //-----------------------------------------------------
    //Pantalla 12 VIEJA
    if (aventura.estadoIgual(12)) {
      
      
      aventura.contador(4);
      //botones
      if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/2.9, height/1.3, 600, 30)) {
        aventura.estado = 13;
        aventura.reset();
      } else if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/4.7, height/1.3+50, 600, 30)) {
        aventura.estado = 14;
        aventura.reset();
      } else if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/2.65, height/1.3+100, 600, 30)) {
        aventura.estado = 13;
        aventura. reset();
      }
      
    }
    */
    //----------------------------------------------------
    //Pantalla 13 //FINALES DE GANASTE
    if (aventura.estadoIgual(13)) {
      aventura.contador(2);
      //boton "CREDITOS"
      if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/2, height/1.2, 400, 30)) {
        aventura.estado = 99;
        aventura.reset();
        aventura.mapa = false;
        aventura.arma = false;
        aventura.agua = false;
        aventura.bidon = false;
      }
    }

    //-----------------------------------------------------
    //Pantalla 14 //PERDISTE
    if (aventura.estadoIgual(14)) {
      aventura.contador(2);
      //boton "VOLVER AL INICIO"
      //aventura.clickRectangulo(width/2, height/1.2, 400, 30
      if (aventura.contadorClicks >= 1 && aventura.clickRectangulo(width/2,height/1.2, 400, 30)) {  
        aventura.reset();
        aventura.estado = 99;
        aventura.mapa = false;
        aventura.arma = false;
        aventura.agua = false;
        aventura.bidon = false;
      }
    }

    //-----------------------------------------------------
    //Pantalla 99//creditos
    if (aventura.estadoIgual(99)) {
      //sonido.pause();
      if (aventura.clickRectangulo(width/2, height/1.5, 400, 30)) {
        aventura.reset();
        aventura.minijuego.reset();
        aventura.estado = 0;
      }
    }
    
     //-----------------------------------------------------
    //Pantalla MINIJUEGO
    if (aventura.estadoIgual(15)) {
      aventura.minijuego.actualizar();
    }
  }
}
