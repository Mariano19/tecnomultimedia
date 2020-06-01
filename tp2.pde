

//Variables Escena1
float colorTextoTitulo1;
float colorTextoTitulo2;
PFont fuenteTitulo;
float posRec1;
//Variables Escena2
PFont fuentePadrino;
float colorTextoTitulo3;
PImage sangre;
float posSangre;
float posRec2;
//Variables Escena3 
float transparencia;
PImage figura;
//Variables Escena4 
PFont creditos;
int posText;
float EfectoCreditos;
//Variables Escena5
float pantallafinal;


void setup(){
  size (400,400);
  textAlign (CENTER,CENTER);
  imageMode(CENTER);
  colorMode(RGB);
  
  //Declaro Parametros Iniciales Escena1
  fuenteTitulo = loadFont("Arial-Black-48.vlw");  
  colorTextoTitulo1 = -50;
  colorTextoTitulo2 = -150;
  posRec1 = -1900;
  
  //Declaro Parametros Iniciales Escena2
  fuentePadrino = loadFont("Godfather.vlw");
  colorTextoTitulo3 = -600;
  sangre = loadImage("sangre.png");
  posSangre = -4000;
  posRec2 = -1000;
  
  //Declaro Parametros Iniciales Escena3
  transparencia = -1600;
  figura = loadImage("figura.png");
  
  //Declaro Parametros Iniciales Escena4
  creditos = loadFont("Exotic350BT.vlw");
  posText = -10;
  EfectoCreditos = 1800;
  
  //Declaro Parametros Iniciales Escena5
  pantallafinal = -4000;
  
}

void draw(){
  background (0);
  
  //Escena1
  textFont(fuenteTitulo);
  fill(colorTextoTitulo1);
  textSize(25);
  text("PARAMOUNT PICTURES", width/2 , height/2.7);
  fill(colorTextoTitulo2);
  textSize(20);
  text("PRESENTS", width/2 , height/1.6);
    //Degrade
  noStroke();
  fill(0,0,0,20);
  rect (posRec1,0,1600,height*2);
  fill(0,0,0,40);
  rect (posRec1,0,1590,height*2);
  fill(0,0,0,60);
  rect (posRec1,0,1580,height*2);
  fill(0,0,0,80);
  rect (posRec1,0,1570,height*2);
  fill(0,0,0,90);
  rect (posRec1,0,1560,height*2);
  fill(0);
  rect (posRec1,0,1550,height*2);
  
  //Escena 2
  textFont(fuentePadrino);
  fill(colorTextoTitulo3);
  textSize(72);
  text("The Godfather*", width/2 , height/2);
  tint(255);
  image(sangre,100,posSangre,300,300);
  image(sangre,300,posSangre-80,300,300);
  fill(171,25,25);
  rect(0,posSangre-6000,width,5850);
  
  //Escena 3
  //fill(255,255,255,transparencia);
  tint(255,126+transparencia);
  image(figura,200,200,600,400);
  
  //Escena 4
  textFont(creditos);
  fill(255,255,255,EfectoCreditos-50);
  textSize(18);
  //director
  text("directed by",width/1.4,posText-1500);
  text("FRANCIS COPPOLA",width/1.4,posText-1470);
  
  //vito
  fill(255,255,255,EfectoCreditos+350);
  textSize(19);
  text("MARLON BRANDO",width/1.4,posText-1890);
  textSize(11);
  text("as",width/1.4,posText-1880);
  textSize(16);
  text("VITO CORLEONE",width/1.4,posText-1870);
  
  //pacino
  fill(255,255,255,EfectoCreditos+height*2);
  textSize(19);
  text("AL PACINO",width/1.4,posText-2290);
  textSize(11);
  text("as",width/1.4,posText-2280);
  textSize(16);
  text("MICHAEL",width/1.4,posText-2270);
  
  //sonny
  fill(255,255,255,EfectoCreditos+height*3);
  textSize(19);
  text("JAMES CAAN",width/1.4,posText-2690);
  textSize(11);
  text("as",width/1.4,posText-2680);
  textSize(16);
  text("SONNY",width/1.4,posText-2670);
  
  //clemenza
  fill(255,255,255,EfectoCreditos+height*4);
  textSize(19);
  text("RICHARD CASTELLANO",width/1.4,posText-3090);
  textSize(11);
  text("as",width/1.4,posText-3080);
  textSize(16);
  text("CLEMENZA",width/1.4,posText-3070);
  
  //tom
  fill(255,255,255,EfectoCreditos+height*5);
  textSize(19);
  text("ROBERT DUVALL",width/1.4,posText-3490);
  textSize(11);
  text("as",width/1.4,posText-3480);
  textSize(16);
  text("TOM HAGEN",width/1.4,posText-3470);
  
  //final
  fill(255,255,255,EfectoCreditos+height*6);
  textSize(22);
  text("THE END",width/1.4,posText-3890);
  
  //Escena 5
  fill(0,0,0,pantallafinal);
  rect(0,0,height,width);
  
  //Actualizo Escena1
  posRec1 +=1;
  colorTextoTitulo1 += 0.8;
  colorTextoTitulo2 += 0.8;
  
  //Actualizo Escena2
  colorTextoTitulo3 += 0.8;
  posSangre += random(0,7);
  posRec2 +=1;
  
  //Actualizo Escena3
  transparencia += 1;
  
  //Actualizo Escena4
  posText += 1;
  EfectoCreditos -= 1;
  
  //Actualizo Escena5
  pantallafinal += 1;
  
  println("Valor titulo1 " + colorTextoTitulo1);
  println("Valor grafico sangre " + posSangre);
  println("Valor degrade creditos " + EfectoCreditos);
  println("Valor pantallfinal " + pantallafinal);
}
