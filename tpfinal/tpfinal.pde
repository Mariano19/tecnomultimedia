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
AudioPlayer sonido;
AudioSample sonido2;

AventuraGrafica aventura;

void setup() {  
  size( 1024, 768);
  surface.setResizable(true);
  
  
  minim = new Minim(this);
  sonido = minim.loadFile("musica.mp3",2048);
  sonido2 = minim.loadSample("musica.mp3",512);  
}

void draw() {  
  background(255);
  aventura.actualizar();
 
}

void mousePressed() {  
  aventura.clickpantalla();
  
}
