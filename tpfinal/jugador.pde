
class Jugador {


  // CAMPOS //(variables) #propiedes
  // Posición en x,izq o der(boolean), cantidad de municion
  float x, y, vel;
  PImage[] arma = new PImage[4];
  PImage aim;
  


  // CONSTRUCTOR // metodo/funcion inicial (el "setup" del objeto)
  // Inicializar posicion y velocidad inicial
  Jugador() {    
    //pushStyle();
    aim = loadImage("aim.png");
    //aim.resize(50,50);
    imageMode(CENTER);
    x = width /2;
    y =  height-140;

    for ( int i = 0; i < 4; i++ ) {
      arma [i] = loadImage( "arma" + i + ".png" ); 
      arma [i].resize(426, 284);
    }
    //popStyle();
  }


  // METODOS (funciones) #acciones
  // --Mostrar el sprite del arma del jugador 
  void actualizar() {
    dibujar();
    //disparar();
  }

  // --Gira el arma segun se apunte a la derecha o a la izquierda
  //--Dibuja la mira
  void dibujar() {   
    noCursor();
    image(aim,mouseX,mouseY);
    if (mouseX > width/2 && mousePressed == false) image(arma [0], x, y);
    if (mouseX < width/2 && mousePressed == false) image(arma [3], x, y);
    if (mouseX > width/2 && mousePressed)image(arma [1], x, y);
    if  (mouseX < width/2 && mousePressed)image(arma [2], x, y);
  }


  void disparar() {
    if (mousePressed && aventura.minijuego.estado==1) /*disparo.play()*/;
  }
  
  
}
