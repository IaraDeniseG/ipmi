
// fondo1
PImage silksong;
float posY;
float posY1;
float ve1;
// titulo
PImage titulo;
PImage hornet1;
// start
PFont fuente1;
String mens1;
// pantallas
int pantalla;
// fondo2
PImage fondo2;
String mens2;
PImage hornet2;
PFont fuente2;
float posX;
// tiempo en pantallas
int segundos;
int tiempoInicio;
// fondo3
PImage fondo3;
String mens3;
PImage bellbeast;
float posX2;
float posX3;
float ve2;
// fondo4
PImage fondo4;
String mens4;
float posX4;
PImage dlc;
// fondo5
PImage fondo5;
String mens5;
float posX5;
//boton reinicio
String mens6;

void setup() {
  size ( 640, 480);
  // fondo1
  silksong = loadImage( "fondo1.png" );
  posY = 0;
  posY1 = -480;
  ve1 = 2;
  // titulo
  titulo = loadImage( "titulo.png" );
  hornet1 = loadImage( "hornet1.png" );
  // start
  fuente1 = loadFont( "FranklinGothic-Medium-48.vlw" );
  textFont( fuente1);
  mens1 = "Start";
  //pantallas
  pantalla = 0;
  tiempoInicio = millis();
  // fondo2
  fondo2 = loadImage( "fondo2.png");
  mens2 = "Hollow Knight: Silksong es la secuela de Hollow Knight un videojuego indie de acción y aventura del género metroidvania, desarrollado por Team Cherry. Tiene como protagonista a Hornet, los jugadores explorarán un reino completamente diferente, enfrentando nuevos enemigos, habilidades y desafíos, manteniendo el estilo de exploración y combate característico de la saga.";
  hornet2 = loadImage( "hornet2.png");
  fuente2 = loadFont( "MalgunGothicBold-48.vlw");
  posX = -300;
  // fondo3
  fondo3 = loadImage ( "mapa.png");
  mens3 ="Uno de los aspectos más interesantes del juego es su enorme mapa, que se va desbloqueando progresivamente a medida que el jugador avanza. Debido a la inmensidad del mundo, existe Bell Beast, un aliado de Hornet que la transporta de una zona del mapa a otra.";
  bellbeast = loadImage( "bellbeast.png");
  posX2 = -300;
  posX3 = 0;
  ve2 = 2;
  // fondo4
  fondo4 = loadImage ( "actos.png");
  mens4 = "El videojuego cuenta con tres actos, lo que divide la historia y aumenta su duración. Tiene distintos finales según las decisiones que tome el jugador. Además, el juego contará con numerosos DLCs que ampliarán aún más el tiempo de jugabilidad. El próximo será Sea of Sorrow, que todavía no tiene fecha de lanzamiento.";
  posX4 = -300;
  dlc = loadImage( "dlc.png");
  // fondo5
  fondo5 = loadImage("fondo5.png");
  mens5 = "Los jugadores estaremos pendientes de las nuevas entregas que puedan llegar de Team Cherry, una compañía que ha demostrado buscar constantemente la mejora y la innovación dentro del género metroidvania. Su compromiso con la calidad y la exploración de nuevas ideas ha generado grandes expectativas entre la comunidad de jugadores.";
  posX5 = -300;
  // boton reinicio
  mens6 = "Reinicio";
}


void draw() {
  segundos = (millis() - tiempoInicio)/ 1000;
  // fondo1
  if ( pantalla == 0)
  {
    image( silksong, 0, posY, 640, 480);
    image( silksong, 0, posY1, 640, 480);
    posY = posY + ve1;
    posY1 = posY1 + ve1;

    if ( posY >= height) {
      posY = -480;
    }
    if (posY1 >= height) {
      posY1 = -480;
    }
    // titulo
    image ( titulo, 120, 20, 400, 190);
    image ( hornet1, 70, 200, 200, 250);
    // boton start
    fill( 0);
    rect( 400, 300, 150, 90, 25);
    fill( 225);
    textFont( fuente1);
    text( mens1, 425, 360, 20);
  }
  if ( pantalla == 1) {
    // fondo2
    image( fondo2, 0, 0, 640, 480);
    image( hornet2, CENTER, CENTER, 430, 300);
    //texto
    fill( 5, 5, 5, 150);
    rect( 0, 300, 640, 480);
    fill( 255);
    textFont( fuente2);
    textSize( 18);
    text( mens2, posX, 300, 460, 300);
    if ( posX < 180) {
      posX = posX + 7;
    }
  }
 
  println( segundos);
  if ( pantalla == 1 && segundos >= 20) {
    pantalla = 2;
  }
  if ( pantalla == 2) {
    // fondo3
    image( fondo3, 0, 0, 640, 480);
    image( bellbeast, posX3, CENTER, 400, 300);
    posX3 = posX3 + ve2;

    //texto
    fill( 5, 5, 5, 150);
    rect( 0, 300, 640, 480);
    fill( 255);
    textFont( fuente2);
    textSize( 18);
    text( mens3, posX2, 300, 460, 300);
    if ( posX2 < 180) {
      posX2 = posX2 + 7;
    }
  }
  
  if ( pantalla == 2 && segundos >= 35) {
    pantalla = 3;
  }
  if (pantalla == 3) {
    // fondo4
    image( fondo4, 0, 0, 640, 480);
    image( dlc, CENTER, CENTER, 300, 200);
    //texto
    fill( 5, 5, 5, 150);
    rect( 0, 300, 640, 480);
    fill( 255);
    textFont( fuente2);
    textSize( 18);
    text( mens4, posX4, 300, 460, 300);
    if ( posX4 < 180) {
      posX4 = posX4 + 7;
    }
  }
  
  if ( pantalla == 3 && segundos >= 55) {
    pantalla = 4;
  }
  if (pantalla == 4) {
    // fondo5
    image( fondo5, 0, 0, 640, 480);

    //texto
    fill( 5, 5, 5, 150);
    rect( 0, 300, 640, 480);
    fill( 255);
    textFont( fuente2);
    textSize( 18);
    text( mens5, posX5, 300, 460, 300);
    if ( posX5 < 180) {
      posX5 = posX5 + 7;
    }
    // boton reincio
    fill( 0);
    rect( 100, 200, 150, 90, 25);
    fill( 225);
    textFont( fuente1);
    textSize( 40);
    text( mens6, 110, 260, 20);
  }
}
void mousePressed () {
  //boton start
  if ( mouseX >= 400 &&
    mouseX <= 550 &&
    mouseY >= 300 &&
    mouseY <= 390) {
    pantalla = 1;
    tiempoInicio = millis();
    segundos = 0;
  }
  //boton reinicio
  if ( mouseX >= 100 &&
    mouseX <= 250 &&
    mouseY >= 200 &&
    mouseY <= 290) {
    pantalla = 0;
    // fondo1
    posY = 0;
    posY1 = -480;
    // fondo2
    posX = -300;
    // fondo3
    posX2 = -300;
    posX3 = 0;
    // fondo4
    posX4 = -300;
    // fondo5
    posX5 = -300;
    tiempoInicio = millis();
    segundos = 0;
  }
}
