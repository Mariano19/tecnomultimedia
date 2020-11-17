
class Tiempo {
  int reset = 0;
  int ms = 20 * 1000;  //30 segundos
  int t; 

  Tiempo() {   
  }


  void actualizar() {
    dibujar();
    perder();
  }

  void reseteo(){
   t = millis() + ms;
 }


  void dibujar() {
    
    if(millis() < t){   
      fill (200,0,0);
      rect( 0, 0, map( t-millis(), reset, reset+ms, 0, width*2 ), height/15 );
      fill (255); 
      text(t-millis(),width/2,height/25);
      
      //println(t-millis(), reset,reset+ms);
    }    
  }

  void perder() {
    if (t - millis() < 0) aventura.minijuego.estado=3;
  }
}
