class Sonido {
 
  //AudioPlayer musica;
  //AudioPlayer tiro;
  //AudioPlayer click;

  //Constructor  
  Sonido() {    
    //musica = minim.loadFile("musica.mp3", 2048);
    //click = minim.loadFile("click.wav", 1024);
    //tiro= minim.loadFile("tiro.mp3", 1024);
  }


  //Metodos    
  void playInteraccion() {
    click.play();
    click.rewind();
  }

  void musica() {
    musica.loop();
  }

  void tiro() {
    tiro.play();
    tiro.rewind();
  }
}
