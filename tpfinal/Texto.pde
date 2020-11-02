//Comentarios: funcion panelConBotones (en pantalla 13 y 14) no existe (¿crear una nueva clase? o crear la funcion en esta clase Texto?)
//Comentarios: falta pantalla99 (créditos)

class Texto {
  //-----------------------------------------------------
  ////PROPIEDADES
  int vDialogo, vTexto = 0;
  PFont fuenteTitulo, fuenteTexto, fuenteCredito;
  String[] texto = new String[27];


  //-----------------------------------------------------
  ////CONSTRUCTOR
  Texto() {

    //Declaración de fuentes
    fuenteTitulo = loadFont("PlaneCrash-48.vlw");
    fuenteTexto = loadFont("TimesNewYorker-48.vlw");
    fuenteCredito = loadFont("AgencyFB-Reg-48.vlw");

    //Declaración de arreglo texto
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
  }

  //-----------------------------------------------------
  ////METODOS

  void dibujar() {
    //-----------------------------------------------------
    //Pantalla 0
    if (aventura.estado==0) {
      botonesTexto(width/6, height-100, 24, fuenteTitulo, "  creditos   ");
      botonesTexto(width/6, height-200, 24, fuenteTitulo, "   empezar    ");
    }
    //-----------------------------------------------------
    //Pantalla 1
    if (aventura.estado==1) {
      for (int i = 0; i<4; i++) {
        if (aventura.contadorClicks==0) {
          textFont(fuenteCredito);
          textAlign(LEFT);
          textSize(30);
          fill(230);
          text(texto[0], 100, height/1.3);
        } else if (aventura.contadorClicks == i) {
          cuerpoTexto(100, height/1.3, 23, texto[i]);
        }
      }
    }

    //-----------------------------------------------------
    //Pantalla 2
    if (aventura.estado==2) {
      //texto
      if (aventura.contadorClicks == 0) {
        cuerpoTexto(100, height/1.3, 23, texto[4]);
      } else if (aventura.contadorClicks >= 1 && (aventura.agua == false || aventura.mapa == false)) {
        cuerpoTexto(100, height/1.3, 23, texto[5]);
      }
      //botones
      if (aventura.contadorClicks >= 1 && aventura.mapa == true && aventura.agua == true) {
        botonesTexto(width/2.6, height/1.3, 24, fuenteTexto, "Me siento seguro en mi casa, voy al super a buscar comida");
        botonesTexto(width/3.75, height/1.3+50, 24, fuenteTexto, "Deberia ir al centro de refugiados");
        botonesTexto(width/2.95, height/1.3+100, 24, fuenteTexto, "Mmm parece que va a llover, mejor voy mañana");
      }
    }

    //-----------------------------------------------------
    //Pantalla 3
    if (aventura.estado==3) {
      if (aventura.contadorClicks == 0) {
        cuerpoTexto(100, height/1.3, 23, texto[6]);
      } else if (aventura.contadorClicks == 1) {
        cuerpoTexto(100, height/1.3, 23, texto[7]);
      } else if (aventura.contadorClicks >= 2) {
        botonesTexto(width/3.3, height/1.3, 24, fuenteTexto, "Mejor me apuro a llegar al supermercado");
        botonesTexto(width/4.7, height/1.3+50, 24, fuenteTexto, "Voy a mirar que paso ");
      }
    }

    //-----------------------------------------------------
    //Pantalla 4
    if (aventura.estado==4) {
      if (aventura.contadorClicks == 0) {
        cuerpoTexto(100, height/1.3, 23, texto[8]);
      } else if (aventura.contadorClicks == 1) {
        botonesTexto(width/3, height/1.3, 24, fuenteTexto, "Lo mejor es ir caminando asi paso desapercibido");
        botonesTexto(width/3.1, height/1.3+50, 24, fuenteTexto, "Buscar un auto en la vieja estacion de servicio");
        botonesTexto(width/3, height/1.3+100, 24, fuenteTexto, "Buscar un auto en el estacionamiento del centro");
      }
    }

    //-----------------------------------------------------
    //Pantalla 5
    if (aventura.estado==5) {
      if (aventura.contadorClicks == 0) {
        cuerpoTexto(100, height/1.3, 23, texto[9]);
      } else if (aventura.contadorClicks >= 1 && aventura.arma == false) {
        cuerpoTexto(100, height/1.3, 23, texto[10]);
      } else if (aventura.contadorClicks >= 1 && aventura.arma == true) {
        botonesTexto(width/3.3, height/1.3, 24, fuenteTexto, "Sigo en el super buscando mas suministros");
        botonesTexto(width/2.6, height/1.3+50, 24, fuenteTexto, "Me vuelvo antes de anochecer, con lo que tengo me alcanza");
      }
    }

    //-----------------------------------------------------
    //Pantalla 6
    if (aventura.estado==6) {
      if (aventura.contadorClicks == 0) {
        cuerpoTexto(100, height/1.3, 23, texto[11]);
      } else if (aventura.contadorClicks >= 1) {
        botonesTexto(width/2.8, height/1.3, 24, fuenteTexto, "Lo ayudo y le acerco un poco de agua de mi mochila");
        botonesTexto(width/3.35, height/1.3+50, 24, fuenteTexto, "Mejor sigo, no tengo que perder tiempo");
      }
    }
    //-----------------------------------------------------
    //Pantalla 7
    if (aventura.estado==7) {
      if (aventura.contadorClicks == 0) {
        cuerpoTexto(100, height/1.3, 23, texto[12]);
      } else if (aventura.contadorClicks == 1) {
        cuerpoTexto(100, height/1.3, 23, texto[13]);
      } else if (aventura.contadorClicks >= 2) {
        botonesTexto(width/3, height/1.3, 24, fuenteTexto, "Confio en el mapa que traje y sigo caminando ");
        botonesTexto(width/3.6, height/1.3+50, 24, fuenteTexto, "Tomo el camino que indica el cartel");
      }
    }
    //-----------------------------------------------------
    //Pantalla 8
    if (aventura.estado==8) {
      if (aventura.contadorClicks == 0) {
        cuerpoTexto(100, height/1.3, 23, texto[14]);
      } else if (aventura.contadorClicks >= 1) {
        botonesTexto(width/3, height/1.3, 24, fuenteTexto, "Sigo buscando algun auto en el estacionamiento");
        botonesTexto(width/2.7, height/1.3+50, 24, fuenteTexto, "El refugio no debe estar muy lejos, puedo ir caminando");
      }
    }
    //-----------------------------------------------------
    //Pantalla 9
    if (aventura.estado==9) {
      if (aventura.contadorClicks == 0) {
        cuerpoTexto(100, height/1.3, 23, texto[15]);
      } else if (aventura.contadorClicks == 1) {
        cuerpoTexto(100, height/1.3, 23, texto[16]);
      } else if (aventura.contadorClicks >= 2 && aventura.bidon == false) {
        cuerpoTexto(100, height/1.3, 23, texto[17]);
      } else if (aventura.contadorClicks >= 2 && aventura.bidon == true) {
        cuerpoTexto(100, height/1.3, 23, texto[18]);
      }
    }

    //-----------------------------------------------------
    //Pantalla 10
    if (aventura.estado==10) {
      if (aventura.contadorClicks == 0) {
        cuerpoTexto(100, height/1.3, 23, texto[19]);
      } else if (aventura.contadorClicks >= 1 && aventura.arma == false) {
        cuerpoTexto(100, height/1.3, 23, texto[20]);
      } else if (aventura.contadorClicks >= 1 && aventura.arma == true) {
        cuerpoTexto(100, height/1.3, 23, texto[21]);
      }
    }

    //-----------------------------------------------------
    //Pantalla 11
    if (aventura.estado==11) {
      if (aventura.contadorClicks == 0) {
        cuerpoTexto(100, height/1.3, 23, texto[22]);
      } else if (aventura.contadorClicks >= 1) {
        botonesTexto(width/2.25, height/1.3, 24, fuenteTexto, "Uso el bidon de combustible que habia encontrado en el estacionamiento");
        botonesTexto(width/2.6, height/1.3+50, 24, fuenteTexto, "Creo que el refugio no debe estar lejos, puedo ir caminando");
      }
    }

    //-----------------------------------------------------
    //Pantalla 12
    if (aventura.estado==12) {
      if (aventura.contadorClicks == 0) {
        cuerpoTexto(100, height/1.3, 23, texto[23]);
      } else if (aventura.contadorClicks >= 1) {
        botonesTexto(width/2.9, height/1.3, 24, fuenteTexto, "Negocio con ellos y les doy una parte de la comida");
        botonesTexto(width/4.7, height/1.3+50, 24, fuenteTexto, "Intento salir corriendo");
        botonesTexto(width/2.65, height/1.3+100, 24, fuenteTexto, "Puedo defenderme con el arma que encontre en el super");
      }
    }

    //----------------------------------------------------
    //Pantalla 13
    if (aventura.estado==13) {
      if (  aventura.contadorClicks == 0 && aventura.bidon == true) {
        //panelConBotones();
        cuerpoTexto(100, height/1.3, 23, texto[24]);
      }
      if (aventura.contadorClicks == 0 && aventura.bidon == false) {
        //panelConBotones();
        cuerpoTexto(100, height/1.3, 23, texto[25]);
      } 
      if (aventura.contadorClicks >= 1) {
        botonesTexto(width/2, height/1.2, 24, fuenteTitulo, "   creditos   ");
      }
    }

    //-----------------------------------------------------
    //Pantalla 14
    if (aventura.estado==14) {
      if (aventura.contadorClicks == 0) {
        //panelConBotones();
        cuerpoTexto(100, height/1.3, 23, texto[26]);
      } 

      if (aventura.contadorClicks >= 1) {
        botonesTexto(width/2, height/1.2, 24, fuenteTitulo, "   volver al inicio   ");
      }
    }

    //-----------------------------------------------------
    //Pantalla 15//creditos
    if (aventura.estado==99) {
      //texto creditos
      textFont(fuenteCredito);
      textAlign(CENTER);  
      if (vDialogo > 100 && vDialogo <900) {
        fill(0, 0, 0, vTexto-150);
        textSize(21);
        text("Autor:   Mariano Quattrocchi \n Prof:   Matias Jauregui ", 220, 160);
      }

      if (vDialogo > 300 && vDialogo <1000) {
        fill(0, 0, 0, vTexto-300);
        textSize(18);
        text("Com. 2", 230, 270);
      }

      if (vDialogo > 1000) {
        fill(0, 0, 0, vTexto-700);
        textSize(21);
        text("Tecnologia \n Multimedial I", 220, 160);
      }

      if (vDialogo > 1200 ) {
        fill(0, 0, 0, vTexto-800);
        textSize(18);
        text("UNLP", 230, 270);
      }
      botonesTexto(width/2, height/1.2, 24, fuenteTitulo, "    volver al inicio    ");

      //Actualizo variables
      vDialogo += 3;
      vTexto += 2;
      println( vDialogo);

      //Loop
      if (vDialogo > 2000 ) {
        vDialogo = 0;
        vTexto = 0;
      }
    }
  }

  void cuerpoTexto(float x, float y, int tam, String texto) {
    pushStyle();
    fill(230);
    textAlign(LEFT);
    textFont(fuenteTexto);
    textSize(tam);  
    text(texto, x, y);
    popStyle();
  }

  // Boton: Cambio de color + texto
  void botonesTexto(float x, float y, int tam, PFont fuente, String texto) {
    pushStyle();
    textAlign(CENTER);
    textFont(fuente);
    textSize(tam);  
    aventura.cambioColor(x, y, texto.length()*10, 30);
    text(texto, x, y);
    popStyle();
  }
}