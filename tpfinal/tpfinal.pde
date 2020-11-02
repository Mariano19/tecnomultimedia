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
  
  
  //cargo texto
  //1
  texto[0] = "                                                              CONTROLES \n                            Presta atencion a las escenas y busca \n                            objetos y pistas que te ayudaran \n                            a tomar las desiciones correctas";
  texto[1] ="Nuestra historia comienza...";
  texto[2] ="En un mundo post apocaliptico una pandemia mortal casi extermina a toda la poblacion. \nNos encontramos en nuestro departamento antes de la infeccion y mientras mucha \ngente decidio huir,  preferimos quedarnos en la ciudad permaneciendo aislados en la \nseguridad de nuestro hogar...";
  texto[3] ="Logramos sobrevivir varios meses racionando los alimentos y el agua que nos quedaban. \nPero el tiempo paso y ahora nos vemos obligados a salir al exterior con el objetivo de \nbuscar suministros o intentar escapar a un lugar mas seguro... \n\n                                                                                                        Elige tu camino...";
  //2
  texto[4] ="Ya no me queda mucha comida, tengo que salir a buscar provisiones o irme a un lugar \nseguro. Deberia llevar algunas cosas para el viaje como la mochila y un poco de agua. \n...";
  texto[5] ="Busca en la habitacion objetos utiles para llevar";
  //3
  texto[6] ="Me dirijo caminando al supermercado, si queda algo de comida en la ciudad es alli. \nTengo que tener cuidado de grupos de saqueadores que merodean por el lugar. \nLo mejor seria volver antes del anochecer";
  texto[7] ="Mientras voy caminando escucho un ruido fuerte en un callejon";
  //4
  texto[8] = "El centro de refugiados se encuentra a las afueras de la ciudad, es un camino largo. \n...";
  //5
  texto[9] ="Llego al supermercado y esta desierto, quedan algunas en latas y una botella de agua. \nQuizas en las gondolas del fondo encuentre algo mas...";
  texto[10] ="Busca comida y cosas utiles";
  //6
  texto[11] ="Me encuentro con un perro que ve sediento y lastimado...";
  //7
  texto[12] ="Voy caminando por el campo, el centro de refugiados no debe estar tan lejos. \nMenos mal que traje agua en la mochila...";
  texto[13] ="Despues de una larga caminata el camino se divide en dos. Hay un camion abandonado \ncon un cartel mal pintado indicando girar a izquierda. Pero en el mapa dice que \ntodavia faltan 2 kilometros ..";
  //8
  texto[14] ="La estacion de servicio se encuentra destruida, quedan algunos vehiculos pero ninguno \nparece funcionar... ";
  //9
  texto[15] = "En el estacionamiento quedaron algunos autos abandonados. Luego de buscar encuentro \nuno con los vidrios rotos pero las llaves puestas";
  texto[16] = "No parece estar en buen estado pero sorprendentemente despues de varios intentos \narranca aunque con poco combustible...";
  texto [17] = "Busca en la escena mas combustible";
  texto [18] = "Ya con todo preparado empiezo a conducir por la autopista...";
  //10
  texto [19] ="Despues de ayudar al perro llego al supermercado y esta desierto, quedan algunas en latas \ny una botella de agua. Quizas en las gondolas del fondo encuentre algo mas...";
  texto [20] ="Busca comida y cosas utiles";
  texto [21] ="Me llevo todo lo que encontre y para mi sorpresa el perrito que ayude me esta \nesperando en la puerta, moviendo la cola. \nYa esta anocheciendo, mejor vuelvo a casa con mi nuevo amigo...";
  //11
  texto[22] ="Despues de conducir un rato empiezo a perder potencia en el motor. \nYa no me queda nada de combustibe... ";
  //12
  texto[23]="Ya es de noche. Camino a casa me encuentro a un grupo de supervivientes armados y no \nparecen amistosos. Llegue a contar hasta tres de ellos y no creo poder abatir a todos. \nRapidamente uno de ellos me amenaza para que le entregue la comida... ";
  //13
  texto[24] = "Llegamos al centro de refugiados a salvo!!..";
  texto[25] ="Volvemos a casa a salvo!!..";
  //14
  texto[26]="Perdiste...";

  //Declaro los Texto
  fuenteTitulo = loadFont("PlaneCrash-48.vlw");
  fuenteTexto = loadFont("TimesNewYorker-48.vlw");
  fuenteCredito = loadFont("AgencyFB-Reg-48.vlw");
  
}

void draw() {
  println ("contador" + contadorClicks, mouseX, mouseY, "MAPA", mapa, "ARMA", arma, "AGUA", agua, "NAFTA", bidon);
  background(255);
  if ( estado==0 ) {
    //Menu Principal
    sonido.play();
    mostrarPantalla0();
  } else if ( estado == 1 ) {
    //Descripcion historia
    sonido.pause();
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
    //Finales
    mostrarPantalla13();
  } else if ( estado == 14 ) {
    //Perdiste
    mostrarPantalla14();
  } else if ( estado == 99 ) {
    //Creditos
    sonido.pause();
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
    //click en pantalla Finales
    clickPantalla13();
  } else if ( estado == 14 ) {
    //click en pantalla Perdiste
    clickPantalla14();
  } else if ( estado==99 ) {
    //click en pantalla Creditos
    clickPantalla99();
  }
}
