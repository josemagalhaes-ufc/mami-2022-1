final float intervalo = 1.0/60;
float tAtual = 0;
float vAtual = 50;
float dAtual;

void setup() {
  frameRate(1);
  size(500, 100);
}

void draw() {
  background(255);
  mostraMundo();
  dAtual = calcMRU(vAtual, tAtual);
  println(tAtual, vAtual);
  circle(dAtual, 50, 10);
  tAtual = tAtual + intervalo;
}

float calcMRU(float velocidade, float tempo) {
  return velocidade * tempo;
}

void mostraMundo() {
 for (int i=0; i < 20; i++) {
   for (int j=0; j < 20; j++) {
     square(i*50, j*50, 50);
   }
 }
}
