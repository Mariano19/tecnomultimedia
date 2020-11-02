
class AventuraGrafica {
  //clases
  Pantalla [] pantalla;

  //arrays   
  String[] texto = new String[27];

  //Variables globales
  int cant= 12; //cantidad de pantallas
  float posY;
  int contadorClicks, estado, vTexto, vDialogo = 0;
  PFont fuenteTitulo, fuenteTexto, fuenteCredito;
  boolean mapa, agua, arma, bidon;
  
  //CONSTRUCTOR
  AventuraGrafica() {
    colorMode(RGB);
    cursor (ARROW);
    rectMode(CENTER);
    textAlign(LEFT);
    estado = 0;
    
    pantalla = new Pantalla[cant];
    
    
    
  }
  
  //FUNCIONES GLOBALES
}
