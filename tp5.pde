
// tp5 | tmm1 | FdA | UNLP
// com2 | Prof. Matias Jauregui Lorda

// Mariano Quattrocchi
// Minijuego de disparos

/* PROPUESTA 
  
  En la pantalla 12 de mi aventura grafica , se produce un encuentro con otros
  supervivientes. Creo que es una buena oportunidad para plantear un minijuego
  de disparos, un shooter en primera persona. Utilizando las coordenadas del
  mouse para la mira y en el fondo del escenario colocar enemigos que se muevan.
  La condicion para ganar es derrotar a los enemigos en un periodo de tiempo
  determinado, caso contrario perderemos.
  */
  
  
import processing.sound.*;
SoundFile disparo;



Juego juego;

void setup() {
  size( 1024, 768 );  
  disparo = new SoundFile(this, "sonido.mp3");
  juego = new Juego();
}

void draw() {
  background(0);
  juego.estados();
  
}

void mousePressed(){
 juego.actualizar(); 
 
  
}
