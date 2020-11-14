class Sonido {
  
    Sonido() {   
    }
    
   void playInteraccion(){
    click.play();
    click.rewind();
  }
  
    void musica(){
    musica.loop();
    }
    
    void tiro(){
      tiro.play();
      tiro.rewind();
    }
}
