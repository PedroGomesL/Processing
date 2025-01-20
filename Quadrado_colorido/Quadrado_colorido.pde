int[] quadrados = new int[5];
int extent = 0;

void setup() {
  fullScreen();
  frameRate(30);
  colorMode(HSB, 360, 100, 100);
  rectMode(CENTER);
  noStroke();
  for (int i = 0; i < quadrados.length; i++) {
    quadrados[i] = i * 400; // Inicializa o array com valores
  }
}
int rota = 5;
void draw() {
  translate(width / 2, height / 2);
  background(0);
  for (int i = 4; i > 0; i--) {
    rotate(radians(45 * rota));
    fill(15 * i, 100,100);
      rota++;
    square(0, 0, quadrados[i]);
  }
}
