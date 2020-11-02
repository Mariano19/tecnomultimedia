class Pantalla {
  //variables
  int c = 20 ; 
  PImage[] imagen = new PImage[c];

  //CONSTRUCTOR
  Pantalla() {


    //cargo imagenes
    for (int i = 0; i < c; i++) {    
      imagen[i] = loadImage("imagen-" + i + ".png");
    }
  }


  // METODOS (funciones)
  void actualizar(int i) {    
    fondo(i);
    panelConBotones();
  }

  // --crear fondo
  void fondo(int i) { 
    pushStyle();
    rectMode(CENTER);
    image (imagen[i], 0, 0);
    //imagen[i].resize(width, height);
    popStyle();
  }

  //crea el panel de abajo con las flechas
  void panelConBotones () {
    pushStyle();
    noStroke();
    fill(100, 100, 100, 90);
    rect(width/2, height-118, width-50, 192, 50);

    cambioColor(width/25, height -118, 40, 80);
    triangle(40, height -118, 40+20, height - 158, 40+20, height-78); 

    cambioColor (width - 50, height -118, 40, 80);  
    triangle(width - 40, height -118, width - 60, height - 158, width - 60, height-78);

    popStyle();
  }
}
