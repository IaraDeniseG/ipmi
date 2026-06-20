// https://www.youtube.com/watch?v=3T3y2ILecIk
PImage referencia;
//figura
int i;
float tam;
//movimiento figura
float giroMax = 0.5;
float giroOriginal = 0.5;
//colores
float rojo = 255;
float verde = 255;
float azul = 255;

void setup() {
  size ( 800, 400);
  referencia = loadImage ( "36.jpg");
  rectMode(CENTER);
}


void draw() {
  background( 255);
  image ( referencia, 0, 0, 400, 400);
  fondo();
  //figura
  pushMatrix();
  translate(600, 200);
  noStroke();
  for ( i = 14; i > 0; i--) {
    //rotacion
    pushMatrix();
    float grados = map(i, 14, 0, 0, giroMax);
    rotate( grados);
    //figura
    if ( i % 2 ==0) {
      fill(0);
    } else {
      fill( rojo, verde, azul);
    }

    tam= calcularTam( i);
    dibujarCuadrado( tam);

    popMatrix();
  }

  popMatrix();
}

void dibujarCuadrado( float medida) {
  rect( 0, 0, medida, medida);
}

float calcularTam( int numero) {
  return numero * 27;
}
//movimiento figura
void keyPressed() {
  if ( key =='d') {
    giroMax = giroMax + 0.05;
  } else if ( key == 'a') {
    giroMax = giroMax - 0.05;
  } else if ( key == 'r') {
    reiniciar();
  }
}
//colores
void mousePressed() {
  rojo = random( 255);
  verde = random( 255);
  azul = random( 255);
}
//for anidado
void fondo() {
  noStroke();
  for ( int x =410; x < width; x += 20) {
    for ( int y = 0; y < height; y += 20) {
      fill ( rojo, verde, azul, 60);
      rect( x, y, 6, 6);
    }
  }
}
//reinicio
void reiniciar() {
  giroMax = giroOriginal;
  rojo = 255;
  verde = 255;
  azul = 255;
}
