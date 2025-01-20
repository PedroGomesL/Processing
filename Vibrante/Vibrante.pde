float extent = 300;
int corPosition = 0;
float[][] distances;
float maxDistance;
int spacer;

void setup() {
  fullScreen();
  background(239, 227, 55);

  // Criar círculos e linhas
  float y1 = random(100, height), y2 = random(100, height);
  float y3 = random(100, height), y4 = random(100, height);
  for (int o = 0; o < linhas.length; o++) {
    linhas[o] = new Line(y1 + (o * 10), y2 + (o * 10), corPosition % c.length);
    corPosition = (corPosition + 1) % c.length;
  }
  for (int o = 0; o < linhas.length; o++) {
    lin[o] = new Line(y3 + (o * 10), y4 + (o * 10), corPosition % c.length);
    corPosition = (corPosition + 1) % c.length;
  }

  // Criar estrelas com pontas e posições aleatórias
  /* for (int p = 0; p < estrelas.length; p++) {
   // Gerar número de pontas aleatório e garantir que seja par
   float pontasAleatorias = floor(random(1, 4)) * 2; // Garante que o número seja par (multiplica por 2)
   // Posições aleatórias para cada estrela
   float xPosAleatorio = random(50, 650);
   float yPosAleatorio = random(50, 650);
   estrelas[p] = new Star(pontasAleatorias, xPosAleatorio, yPosAleatorio);
   }*/
  frameRate(30);
  maxDistance = dist(width/2, height/2, width, height);
  distances = new float[width][height];
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < width; x++) {
      float distance = dist(width/2, height/2, x, y);
      distances[x][y] = distance/maxDistance * 255;
    }
  }
  spacer = 10;
  strokeWeight(6);
}

float centerX = random(0, 700); // Coordenada X central
float centerY = random(0, 700); // Coordenada Y central
float initialExtent = 10; // Diâmetro inicial
float extentIncrement = 50; // Incremento no tamanho de cada círculo
float stroSize = 28; // Espessura inicial do contorno

void draw() {
  //background(#010E7D);
  background(239, 227, 55);

  fill(1, 14, 125);
  //rotate(radians(60));
  noStroke();
  rotate(radians(30));
  rect(1500, -420, 1250, -1200);

  for (int y = 0; y < height; y += spacer) {
    for (int x = 0; x < width; x += spacer) {
      stroke(1, 14, 125, 100);
      strokeWeight(3);
      point(x + spacer/2, y + spacer/2);
    }
  }
  for (int i = 0; i < circulo.length; i++) {
    circulo[i] = new Cir(centerX, centerY, initialExtent + i * extentIncrement, stroSize, i % c.length);
  }
  // Desenhar os círculos e linhas
  for (int i = 0; i < circulo.length; i++) {
    circulo[i].exibir();
  }

  for (int o = 0; o < 25; o++) {
    linhas[o].exibir();
    linhas[o].exibir2(o);
    lin[o].exibir();
    lin[o].exibir2(o);
  }
}

// Desenhar as estrelas
/*  for (int p = 0; p < estrelas.length; p++) {
 estrelas[p].star();
 }
 */
Cir[] circulo = new Cir[12];
Line[] linhas = new Line[25];
Line[] lin = new Line[25];
//Star[] estrelas = new Star[5];
