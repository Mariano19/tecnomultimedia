
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
import ddf.minim.*;


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
 13:Finales
 14:Perdiste
 99:creditos
 */
 
//sonido
Minim minim;

//AudioPlayer musica;
//AudioPlayer tiro;
//AudioPlayer click;

AventuraGrafica aventura;

void setup() {  
  size( 1024, 768);
  aventura = new AventuraGrafica();
  
  minim = new Minim(this);
  //musica = minim.loadFile("musica.mp3",2048);
  //click = minim.loadFile("click.wav",1024);
  //tiro=minim.loadFile("tiro.mp3",1024);
  aventura.musica();
}

void draw() {  
  background(255);
  aventura.actualizar(); 
}

void mousePressed() {  
  aventura.clickPantalla();  
}
