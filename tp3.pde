/*   ctrl+r ctrl+t ctrl+espacio
 0:Menu Principal
 1:Historia
 2:Departamento
 3:Camino a Supermercado 
 4:Camino al Centro de Refugiados
 5:Super de dia
 6:Callejon
 7:Camino por el campo
 8:Estacion de Servicio
 9:Estacionamiento
 10:Super de noche
 11:Autopista
 12:Encuentro supervivientes
 13:Final2
 14:Final1
 15:Perdiste
 99:creditos
 */

//Variables globales
float posY;
int contadorClicks, estado, vTexto, vDialogo = 0;
PFont fuenteTitulo, fuenteTexto, fuenteCredito;
PImage cielo, controles, imagenDialogo, imagenDialogo2, imagen0, imagen99, imagen1, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7, imagen8, imagen9, imagen11, imagen12, imagen13, imagen14, imagen15;
boolean mapa, agua, arma, bidon; 


void setup() {
  size( 1024, 768);
  colorMode(RGB);
  estado = 0;
  //Declaro Parametros Texto
  fuenteTitulo = loadFont("PlaneCrash-48.vlw");
  fuenteTexto = loadFont("TimesNewYorker-48.vlw");
  fuenteCredito = loadFont("AgencyFB-Reg-48.vlw");
  //Declaro Parametros Imagenes
  cielo = loadImage("cielo.jpg");
  controles = loadImage("controles.png");
  imagenDialogo = loadImage("dialogo.png");
  imagenDialogo2 = loadImage("dialogo.png");
  imagen99 = loadImage("creditos.jpg");
  imagen0 = loadImage("menu2.png");
  imagen1 = loadImage("historia.jpg");
  imagen2 = loadImage("depto.jpg");
  imagen3 = loadImage("camino1.jpg");
  imagen4 = loadImage("camino2.jpg");
  imagen5 = loadImage("super.jpg");
  imagen6 = loadImage("callejon.jpg");
  imagen7 = loadImage("bosque.jpg");
  imagen8 = loadImage("estacion.jpg");
  imagen9 = loadImage("estacionamiento.jpg");
  imagen11 = loadImage("autopista.jpg");  
  imagen12 = loadImage("grupo.jpg");
  imagen13 = loadImage("final2.jpg");
  imagen14 = loadImage("final1.jpg");
  imagen15 = loadImage("perdiste.jpg");
}

void draw() {
  println ("contador" + contadorClicks, mouseX, mouseY, "MAPA", mapa, "ARMA", arma, "AGUA", agua, "NAFTA", bidon);
  background(255);
  if ( estado==0 ) {
    //Menu Principal
    mostrarPantalla0();
  } else if ( estado == 1 ) {
    //Descripcion historia
    mostrarPantalla1();
  } else if ( estado == 2 ) {
    //Departamento
    mostrarPantalla2();
  } else if ( estado == 3 ) {
    //Camino al super
    mostrarPantalla3();
  } else if ( estado == 4 ) {
    //Camino al centro de refugiados
    mostrarPantalla4();
  } else if ( estado == 5 ) {
    //Super de dia
    mostrarPantalla5();
  } else if ( estado == 6 ) {
    //Callejon
    mostrarPantalla6();
  } else if ( estado == 7 ) {
    //Camino por el campo
    mostrarPantalla7();
  } else if ( estado == 8 ) {
    //Estacion de Servicio
    mostrarPantalla8();
  } else if ( estado == 9 ) {
    //Estacionamiento
    mostrarPantalla9();
  } else if ( estado == 10 ) {
    //Super de noche
    mostrarPantalla10();
  } else if ( estado == 11 ) {
    //Camino por autopista
    mostrarPantalla11();
  } else if ( estado == 12 ) {
    //Grupo de superviviente
    mostrarPantalla12();
  } else if ( estado == 13 ) {
    //Final2
    mostrarPantalla13();
  } else if ( estado == 14 ) {
    //Final1
    mostrarPantalla14();
  } else if ( estado == 15 ) {
    //Perdiste
    mostrarPantalla15();
  } else if ( estado == 99 ) {
    //Creditos
    mostrarPantalla99();
  }
  
}

void mousePressed() {
  if ( estado==0 ) {
    //click en la pantalla de Menu
    clickPantalla0();
  } else if ( estado==1 ) {
    //click en pantalla Historia
    clickPantalla1();
  } else if ( estado==2 ) {
    //click en pantalla Departamento
    clickPantalla2();
  } else if ( estado == 3 ) {
    //click en pantalla Camino al super
    clickPantalla3();
  } else if ( estado == 4 ) {
    //click en pantalla Camino al centro de refugiados
    clickPantalla4();
  } else if ( estado == 5 ) {
    //click en pantalla Super de dia
    clickPantalla5();
  } else if ( estado == 6 ) {
    //click en pantalla Callejon
    clickPantalla6();
  } else if ( estado == 7 ) {
    //click en pantalla Camino por el campo
    clickPantalla7();
  } else if ( estado == 8 ) {
    //click en pantalla Estacion de Servicio
    clickPantalla8();
  } else if ( estado == 9 ) {
    //click en pantalla Estacionamiento
    clickPantalla9();
  } else if ( estado == 10 ) {
    //click en pantalla Super de noche
    clickPantalla10();
  } else if ( estado == 11 ) {
    //click en pantalla Camino por autopista
    clickPantalla11();
  } else if ( estado == 12 ) {
    //click en pantalla Grupo de superviviente
    clickPantalla12();
  } else if ( estado == 13 ) {
    //click en pantalla Final2
    clickPantalla13();
  } else if ( estado == 14 ) {
    //click en pantalla Final1
    clickPantalla14();
  } else if ( estado == 15 ) {
    //click en pantalla Perdiste
    clickPantalla15();
  } else if ( estado==99 ) {
    //click en pantalla Creditos
    clickPantalla99();
  }
}
