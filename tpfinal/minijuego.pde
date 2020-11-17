
class Minijuego {


  // PROPIEDADES (variables)
  // EstadoGeneralDelJuego = jugar, ganar, perder
  Tiempo tiempo;
  Jugador jugador;
  Enemigo [] enemigo;


  int velocidadMax = 8;
  int cant= 12; //cantidad enemigos
  int cVivos;
  int estado = 1; //0:menu,1:Jugar,2:Ganar,3:Perder
  PFont fuenteTitulo;
  PImage fondo, fondo2;



  // CONSTRUCTOR (setup del objeto)  
  // inicializar los objetos: jugador, enemigos, tiempo
  Minijuego() {

    //pushStyle();
    //fuenteTitulo = loadFont("PlaneCrash-48.vlw");
    fondo = loadImage("fondo.png");
    fondo2 = loadImage("fondo2.png");

    tiempo = new Tiempo();
    jugador = new Jugador();
    enemigo = new Enemigo [cant];

    imageMode(CENTER);
    textAlign(CENTER, CENTER);
    //textFont(fuenteTitulo);
    textSize(48);

    for ( int i = 0; i < cant; i++ ) {      
      enemigo [i] = new Enemigo(-300-(i*30), 350+(i*5), (int)random(1, velocidadMax));
      if (enemigo[i].vivo == true) cVivos++;
    }
    //popStyle();
  }


  // METODOS (funciones)
  void estados() {
    //menu();
    jugar();
    ganar();
    perder();
  }

  void actualizar() {
    colisiones();
    jugador.disparar();
    //tiempo.reseteo();
    //juego.cantidadVivos();
  }

  //MENU - ESTADO 0
  void menu() {


    if (estado == 0) {
      pushStyle();      
      background(0);
      fill(255);  
      if ( mouseX>width/2-100 && mouseX<width/2+100 && mouseY>height/2-20 && mouseY<height/2+20 ) {
        fill(200, 0, 0);
        cursor(HAND);
      } else {
        cursor(ARROW);
      }
      //textSize(48);
      text("jugar", width/2, height/2);      
      if (mousePressed && mouseX>width/2-100 && mouseX<width/2+100 && mouseY>height/2-20 && mouseY<height/2+20) estado=1;
      popStyle();
    }
  }

  //JUGAR - ESTADO 1
  void jugar() { 
    //println(int(random(carriles.length)), carriles[index]);
    //println(enemigo[0].vivo, enemigo[1].vivo, enemigo[2].vivo, enemigo[3].vivo, enemigo[4].vivo, cVivos);
    if (estado == 1) {
      image(fondo, width/2, height/2);
      for ( int i = 0; i < cant; i++ ) {
        enemigo [i].actualizar();
        //jugador.actualizar();
      }
      image(fondo2, width/2, height/2);
      for ( int i = 0; i < cant; i++ ) {
        //enemigo [i].actualizar();
        jugador.actualizar();
      }
      tiempo.actualizar();
      cantidadVivos();
    }
  }

  //GANAR - ESTADO 2
  void ganar() {
    if (estado == 2) {
      aventura.estado = 13;    
      /*
      pushStyle();      
       background(0, 0, 0, 50);
       fill(200, 0, 0);
       text("ganaste", width/2, height/2);
       popStyle();
       */
    }
  }

  //PERDER - ESTADO 3
  void perder() {
    if (estado == 3) {
      aventura.estado = 14;      
      /*
      pushStyle();      
       background(0, 0, 0, 50);
       fill(200, 0, 0);
       text("game over", width/2, height/2);
       popStyle();
       */
    }
  }

  //EVALUA CANTIDAD DE ENEMIGOS VIVOS-MUERTOS
  void cantidadVivos() {
    println(cVivos);
    cVivos = 0; //cantidad de enemigos vivos  
    for ( int i = 0; i < enemigo.length; i++ ) {      
      if (enemigo[i].vivo == true) cVivos++;
    }  
    if (cVivos == 0) estado=2;
  }



  //EVALUA COLISIONES DEL MOUSE CON ENEMIGOS
  void colisiones() {
    //println(cant, mouseX, mouseY, enemigo[0].x,contador,enemigo[0].vivo);    
    for ( int i = 0; i < enemigo.length; i++ ) {      
      if (mouseButton == LEFT && mouseX > enemigo[i].x-25 && mouseX < enemigo[i].x+25 && mouseY > enemigo[i].y-40 && mouseY < enemigo[i].y+40) {
        enemigo[i].morir();
      }

      //if (enemigo[i].vivo == true) cVivos++;
      //if (enemigo[i].vivo == false ) estado = 2;
    }
  }

  void reset() {
    for ( int i = 0; i < cant; i++ ){
    enemigo[i].reset();
    enemigo [i] = new Enemigo(-300-(i*30), 350+(i*5), (int)random(1, velocidadMax));
  }
    velocidadMax = 8;
    cant= 12; //cantidad enemigos      
    estado = 1; //0:menu,1:Jugar,2:Ganar,3:Perder
    //tiempo.t = millis() + tiempo.ms;
    tiempo.reseteo();
  }
}
