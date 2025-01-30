// Número de pontas e pontos da estrela:
int pontas = 16, nbr = 2*pontas;
// Raio externo e interno:
float re = 350, ri = (0.7*re);
// Giro da estrela (animação):
float incremento = 0;
void setup() {
  size(800, 800);
  background(255);
  frameRate(5);
}

void draw() {
  drawRadialGradient(width/2, height/2, width + 400);
  fill(0);
  noStroke();
  strokeWeight(2);
  circle(width / 2,height / 2, 54);
    stroke(245,0,10);
  // Coordenadas dos pontos que compõem a estrela:
  float[] x = new float[nbr];
  float[] y = new float[nbr];
  for (int i = 0; i < nbr; i++) {
    float r = 0;
    // Se o ponto for par temos o raio externo, se ímpar, o interno:
    if (i%2 == 0) {
      r = re;
    } else {
      r = ri;
    }
    x[i] = width/2 + r*cos(incremento + radians(i*360.0/nbr + (i%2)*180));
    y[i] = height/2 + r*sin(incremento + radians(i*360.0/nbr + (i%2)*180));
  }
  // Desenho da estrela - Conecta, sequencialmente, os pontos gerados:
  for (int i = 1; i < nbr; i++) {
    line(x[i-1], y[i-1], x[i], y[i]);
  }
  print("isso é o Frame: " + frameCount);
  // A última ligação deve ser feita fora da repetição,
  // unindo o primeiro com o último ponto:
  line(x[0], y[0], x[nbr-1], y[nbr-1]);
  // Aumenta o ângulo de incremento para criar a ilusão de giro da figura:
}





void drawRadialGradient(float x, float y, float diameter) {
  for (float r = diameter / 2; r > 0; r--) {
    float gray = map(r, 0, diameter / 2, 255, 0);
    fill(gray);
    noStroke();
    ellipse(x, y, r * 2, r * 2);
  }
}
